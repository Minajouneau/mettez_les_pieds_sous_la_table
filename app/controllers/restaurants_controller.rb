class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.geocoded # returns flats with coordinates

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
