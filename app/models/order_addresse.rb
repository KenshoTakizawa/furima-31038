class OrderAddresse

  include ActiveModel::Model

  attr_accessor :postal_code, :destination_id, :city, :house_number, :building_name, :phone_number, :order_id, :user_id, :item_id
  attr_accessor :token




  with_options presence: true do

    VALID_PHONE_NUMBER_REGEX = /\A0(\d{1}[-(]?\d{4}|\d{2}[-(]?\d{3}|\d{3}[-(]?\d{2}|\d{4}[-(]?\d{1})[-)]?\d{4}\z|\A0[5789]0[-]?\d{4}[-]?\d{4}\z/

    validates :postal_code, format: {with: /\A[0-9]{3}-[0-9]{4}\z/, message: "is invalid. Include hyphen(-)"}
    validates :phone_number, format: { with: VALID_PHONE_NUMBER_REGEX }
  end

  validates :city, presence: true
  validates :house_number, presence: true

  validates :destination_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :token, presence: true

  def save
    # ユーザーの情報を保存し、「user」という変数に入れている

   
    order = Order.create(item_id: item_id, user_id: user_id)

    Addresse.create(postal_code: postal_code, destination_id: destination_id, city: city, house_number: house_number, phone_number: phone_number, building_name: building_name,order_id: order.id, user_id: user_id)

  end


end


  