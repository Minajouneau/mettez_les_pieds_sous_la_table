class RestaurantsController < ApplicationController

  def index
    @user = current_user
  end

  # def new
  #   @restaurant = Restaurant.new
  # end

  # def create
  #   @user = current_user
  #   @restaurant = Restaurant.new(restaurant_params)
  #   @restaurant.user = @user
  #   if @restaurant.save
  #     redirect_to restaurant_path(@restaurant)
  #   else
  #     render "new"
  #   end
  # end

  # def edit
  #   @restaurant = Restaurant.find(params[:id])
  #   authorize @restaurant
  # end

# private

#   def restaurant_params
#     params.require(:restaurant).permit(:name, :address, :contact_email, :activated, :domain_name, :description, :phone_number  photos: [])
#   end

end
