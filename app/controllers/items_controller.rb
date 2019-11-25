class ItemsController < ApplicationController
  
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    Item.create(items_params)
    redirect_to action: "index"
  end

  def destory
  end


private
  def items_params
    params.require(:item).permit(:name, :image)
  end

end