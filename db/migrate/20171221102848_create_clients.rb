class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :address
      t.string :phone_no
      t.string :pan_no

      t.timestamps
    end
  end
end
