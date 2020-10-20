require 'rails_helper'

RSpec.describe Item, type: :model do
  describe '#create' do
  before do
    @item = FactoryBot.build(:item)
  end

  it "nameが空では登録できないこと" do
    @item.name = ""
    @item.valid?
    expect(@item.errors.full_messages).to include("Name can't be blank")
  end

  it "descriptionが空では登録できないこと" do
    @item.description = ""
    @item.valid?
    expect(@item.errors.full_messages).to include("Description can't be blank")

  end
  it "category_idが空では登録できないこと" do
    @item.category_id = ""
    @item.valid?
    expect(@item.errors.full_messages).to include("Category can't be blank")

  end
  it "condition_idが空では登録できないこと" do
    @item.condition_id = ""
    @item.valid?
    expect(@item.errors.full_messages).to include("Condition can't be blank")

  end
  it "send_method_idが空では登録できないこと" do
    @item.send_method_id = ""
    @item.valid?
    expect(@item.errors.full_messages).to include("Send method can't be blank")

  end
  it "destination_idが空では登録できないこと" do
    @item.destination_id = ""
    @item.valid?
    expect(@item.errors.full_messages).to include("Destination can't be blank")

  end
  it "delivery_period_idが空では登録できないこと" do
    @item.delivery_period_id = ""
    @item.valid?
    expect(@item.errors.full_messages).to include("Delivery period can't be blank")

  end
  it "user_idが空では登録できないこと" do
    @item.user = nil
    @item.valid?
    expect(@item.errors.full_messages).to include("User must exist")

  end

  end
end
