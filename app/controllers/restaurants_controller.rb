class RestaurantsController < ApplicationController
  authorize @restaurant  
  def index
    @restaurants = policy_scope(Restaurant.all.geocoded)
  end
  
  def show
    @markers = @restaurants.map do |restaurant|
      {
        lat: restaurant.latitude,
        lng: restaurant.longitude
      }
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
    authorize @restaurant 
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    authorize @restaurant
    @restaurant.update(restaurant_params)
    redirect_to dashboard_path
    # Will raise ActiveModel::ForbiddenAttributesError
  end

private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :contact_email, :activated, :domain_name, :description, :phone_number, photos: [])
  end

end
