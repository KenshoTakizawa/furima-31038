class Addresse < ApplicationRecord


  belongs_to :order, dependent: :destroy
  belongs_to :user


end
