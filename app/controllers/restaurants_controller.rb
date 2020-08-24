class RestaurantsController < ApplicationController

private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :contact_email, :activated, :domain_name, :description, :phone_number  photos: [])
  end

end
