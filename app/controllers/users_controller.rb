class UsersController < ApplicationController
  def show
    ##全ての合計値
    @total_items = Item.where(user_id: current_user.id)
    @total_price = @total_items.sum(:price)

    ##今月の合計値
    @this_month_items = Item.where(user_id: current_user.id, created_at: Time.now.all_month)
    @this_month_price = @this_month_items.sum(:price)

    ##先月の合計値
    @last_month_items = Item.where(user_id: current_user.id, created_at: Time.now.last_month.all_month)
    @last_month_price = @last_month_items.sum(:price)
  end

  private
  def user_params
    params.require(:user).permit(:name, :email)
  end
end
