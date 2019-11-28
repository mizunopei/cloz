class ItemsController < ApplicationController
  
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(items_params)
    if @item.save
      redirect_to :root
    else
      render :new
    end
  end

  def destory
  end


private
  def items_params
    params.require(:item).permit(:name, :image, :category_id, :color_id, :price).merge(user_id: current_user.id)
  end

end