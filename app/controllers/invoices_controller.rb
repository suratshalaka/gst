class InvoicesController < ApplicationController
   before_action :set_invoice, only: [:show, :edit, :update, :destroy, :show_invoice]

 def index
    @invoices = Invoice.all
  end

  # GET /invoice/1
  # GET /invoice/1.json
  def show
        @invoices = Invoice.all
    @invoice = Invoice.find(params[:id])
  end
  
  def show_invoice
    respond_to do |format|
      format.html
      format.json 
      format.pdf do
         render pdf: "show_invoice.pdf.erb"   # Excluding ".pdf" extension.
        end
      end
  end

  # GET /invoice/new
  def new
    @invoice = Invoice.new
  end

  # GET /invoice/1/edit
  def edit
    @invoice = Invoice.find(params[:id])
  end

  # POST /invoice
  # POST /invoice.json



  def create
   
    @invoice = Invoice.new(invoice_params)
  
          # save goes like usual
      if @invoice.save
        flash[:notice] = "Successfully created invoice."
        redirect_to @invoice and return
      else
    render :action => 'new'
  end
 end 

  # PATCH/PUT /invoice/1
  # PATCH/PUT /invoice/1.json
  
  
  def update
    @invoice = Invoice.find(params[:id])
   
      # save goes like usual
     if @invoice.update(invoice_params)
      redirect_to @invoice
        else
      render 'edit'
    end
 end 
  # DELETE /invoice/1
  # DELETE /invoice/1.json
  def destroy
   @invoice.destroy
    flash[:notice] = "Successfully destroyed Invoice"
    redirect_to @invoice
  end



  private

    # Use callbacks to share common setup or constraints between actions.
    def set_invoice
      @invoice = Invoice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def invoice_params
      params.require(:invoice).permit(:client_id, :name, :address, :phone_no, :pan_no, :invoice_date, :invoice_no, invoice_items_attributes: [ :net_amt, :cgst_tax, :sgst_tax, :quantity, :total, :_destroy, :product_id, :invoice_id, :total_amt ])
    end
end

