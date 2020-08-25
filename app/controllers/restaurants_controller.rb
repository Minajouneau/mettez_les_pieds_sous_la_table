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

# private

  # def restaurant_params
  #   params.require(:restaurant).permit(:name, :address, :contact_email, :activated, :domain_name, :description, :phone_number  photos: [])
  # end

end
