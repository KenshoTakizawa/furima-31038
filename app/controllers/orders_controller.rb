class OrdersController < ApplicationController
  before_action :forbid_order
  before_action :do_login
  before_action :go_root

  def index
    @order_addresse = OrderAddresse.new
    @item = Item.find(params[:item_id])
  end

  def create
    @item = Item.find(params[:item_id])
    @order_addresse = OrderAddresse.new(addresse_params)
    # binding.pry
    if @order_addresse.valid?
      pay_item
      @order_addresse.save
      redirect_to root_path
    else
      render action: :index
    end
  end

  private
  def go_root
    if current_user.id == Item.find(params[:item_id]).user.id
      redirect_to root_path
    end
  end

  def do_login
    unless user_signed_in?
      redirect_to root_path
    end
  end

  def forbid_order
    if Item.find(params[:item_id]).order.present?
      redirect_to root_path
    end
  end



  def addresse_params
    params.require(:order_addresse).permit(:postal_code, :destination_id, :city, :house_number, :building_name, :phone_number).merge(order_id: params[:id], user_id: current_user.id, token: params[:token], item_id: params[:item_id])
  end

  # def order_params
  #   params.permit!.merge(item_id: params[:item_id], user_id: current_user.id, token: params[:token])
  # end

  def pay_item
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"]  # 自身のPAY.JPテスト秘密鍵を記述しましょう
      Payjp::Charge.create(
        amount: @item.price,  # 商品の値段
        card: addresse_params[:token],    # カードトークン
        currency: 'jpy'                 # 通貨の種類（日本円）
      )
  end

end



