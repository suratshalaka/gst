class Invoice < ApplicationRecord
 


  belongs_to :client
  has_many :invoice_items, inverse_of: :invoice, dependent: :destroy
  accepts_nested_attributes_for :invoice_items, reject_if: :all_blank, allow_destroy: :true

 

   end
