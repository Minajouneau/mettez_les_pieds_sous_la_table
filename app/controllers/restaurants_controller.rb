class RestaurantsController < ApplicationController
  authorize @restaurant
  
  def index
    @restaurants = policy_scope(Restaurant)
  end

private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :contact_email, :activated, :domain_name, :description, :phone_number  photos: [])
  end

end
