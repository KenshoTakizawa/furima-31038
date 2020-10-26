require 'rails_helper'

RSpec.describe OrderAddresse, type: :model do
  before do
    @order = FactoryBot.build(:order_addresse)
  end

  # it "numberが空では登録できないこと" do
  #   @order.number = nil
  #   @order.valid?
  #   expect(@order.errors.full_messages).to include("Number can't be blank")
  # end

  # it "exp_monthが空では登録できないこと" do
  #   @order.exp_month = nil
  #   @order.valid?
  #   expect(@order.errors.full_messages).to include("Exp month can't be blank")
  # end

  # it "exp_yearが空では登録できないこと" do
  #   @order.exp_year = nil
  #   @order.valid?
  #   expect(@order.errors.full_messages).to include("Exp year can't be blank")
  # end

  # it "cvcが空では登録できないこと" do
  #   @order.cvc = nil
  #   @order.valid?
  #   expect(@order.errors.full_messages).to include("Cvc can't be blank")
  # end


  it "postal_codeが空では登録できないこと" do
    @order.postal_code = nil
    @order.valid?
    expect(@order.errors.full_messages).to include("Postal code can't be blank")
  end

  it "destination_idが空では登録できないこと" do
    @order.destination_id = nil
    @order.valid?
    expect(@order.errors.full_messages).to include("Destination can't be blank")
  end

  it "cityが空では登録できないこと" do
    @order.city = nil
    @order.valid?
    expect(@order.errors.full_messages).to include("City can't be blank")
  end

  it "house_numberが空では登録できないこと" do
    @order.house_number = nil
    @order.valid?
    expect(@order.errors.full_messages).to include("House number can't be blank")
  end

  it "phone_numberが空では登録できないこと" do
    @order.phone_number = nil
    @order.valid?
    expect(@order.errors.full_messages).to include("Phone number can't be blank")
  end

  it "tokenが空では登録できないこと" do
    @order.token = nil
    @order.valid?
    expect(@order.errors.full_messages).to include("Token can't be blank")
  end
end