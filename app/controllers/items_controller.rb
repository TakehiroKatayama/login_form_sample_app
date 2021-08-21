class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    Item.create!(name: item_params[:name], price: item_params[:price], email: item_params[:email],
                 user_id: current_user.id)
  end

  private

  def item_params
    params.require(:item).permit(:name, :price, :email)
  end
end
