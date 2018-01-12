class AddColumnToInvoiceItems < ActiveRecord::Migration[5.1]
  def change
    add_column :invoice_items, :net_amt, :string
    add_column :invoice_items, :cgst_tax, :string
    add_column :invoice_items, :sgst_tax, :string
    add_column :invoice_items, :quantity, :string
    add_column :invoice_items, :total, :string
  end
end
