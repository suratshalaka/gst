class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.float :price
      t.float :cgst
      t.float :sgst
      t.string :total
      t.string :stock

      t.timestamps
    end
  end
end
