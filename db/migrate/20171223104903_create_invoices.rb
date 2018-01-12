class CreateInvoices < ActiveRecord::Migration[5.1]
  def change
    create_table :invoices do |t|
      t.date :invoice_date
      t.string :invoice_no
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
