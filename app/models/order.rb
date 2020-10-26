class Order < ApplicationRecord

  

  belongs_to :item, dependent: :destroy
  belongs_to :user
  has_one :addresse, dependent: :destroy

  
end
