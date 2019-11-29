class ItemsController < ApplicationController
  
  def index
    @items = Item.where(user_id: current_user.id)
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

  def outer
    @outer__items = Item.where(category_id: "1", user_id: current_user.id)
  end

  def tops
    @tops__items = Item.where(category_id: "2", user_id: current_user.id)
  end

  def bottoms
    @bottoms__items = Item.where(category_id: "3", user_id: current_user.id)
  end

  def shoes
    @shoes__items = Item.where(category_id: "4", user_id: current_user.id)
  end

  def goods
    @goods__items = Item.where(category_id: "5", user_id: current_user.id)
  end

  def black
    @black__items = Item.where(color_id: "1", user_id: current_user.id)
  end

  def white
    @white__items = Item.where(color_id: "2",user_id: current_user.id)
  end

  def navy
    @navy__items = Item.where(color_id: "3", user_id: current_user.id)
  end

  def gray
    @gray__items = Item.where(color_id: "4", user_id: current_user.id)
  end

  def beige
    @beige__items = Item.where(color_id: "5", user_id: current_user.id)
  end

  def green
    @green__items = Item.where(color_id: "6", user_id: current_user.id)
  end

  def other_color
    @other_color__items = Item.where(color_id: "7", user_id: current_user.id)
  end

private
  def items_params
    params.require(:item).permit(:name, :image, :category_id, :color_id, :price).merge(user_id: current_user.id)
  end

end