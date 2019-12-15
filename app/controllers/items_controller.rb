class ItemsController < ApplicationController

  before_action :display_items, execpt:[:new, :create, :destroy, :edit]
  
  def index
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

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.update(items_params) if @item.user_id == current_user.id
    redirect_to :root
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy if @item.user_id == current_user.id
  end


  def outer
    @outer__items = @items.where(category_id: "1")
  end

  def tops
    @tops__items = @items.where(category_id: "2")
  end

  def bottoms
    @bottoms__items = @items.where(category_id: "3")
  end

  def shoes
    @shoes__items = @items.where(category_id: "4")
  end

  def goods
    @goods__items = @items.where(category_id: "5")
  end

  def black
    @black__items = @items.where(color_id: "1")
  end

  def white
    @white__items = @items.where(color_id: "2")
  end

  def navy
    @navy__items = @items.where(color_id: "3")
  end

  def gray
    @gray__items = @items.where(color_id: "4")
  end

  def beige
    @beige__items = @items.where(color_id: "5")
  end

  def green
    @green__items = @items.where(color_id: "6")
  end

  def other_color
    @other_color__items = @items.where(color_id: "7")
  end

private
  def items_params
    params.require(:item).permit(:name, :image, :category_id, :color_id, :price).merge(user_id: current_user.id)
  end

  def display_items
    @items = Item.where(user_id: current_user.id).page(params[:page]).per(8)
  end

end