class RestaurantsController < ApplicationController
  def index
    @restaurants = policy_scope(current_user.restaurants)
  end

  def show
    @restaurant = Restaurant.geocoded.find(params[:id])
    authorize @restaurant
    # @markers = @restaurants.map do |restaurant|
    #   {
    #     lat: restaurant.latitude,
    #     lng: restaurant.longitude
    #   }
    # end
  end

  def new
    @restaurant = Restaurant.new
    authorize @restaurant
  end

  def create
    @user = current_user
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.user = @user
    authorize @restaurant
    if @restaurant.save
      redirect_to restaurants_path
    else
      render "new"
    end
  end

  def edit
    @restaurant = Restaurant.geocoded.find(params[:id])
    @photos = Photo.all
    @photo = Photo.new
    authorize @restaurant
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    authorize @restaurant
    @restaurant.update(restaurant_params)
    redirect_to restaurants_path
    # Will raise ActiveModel::ForbiddenAttributesError
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :contact_email, :activated, :domain_name, :description, :phone_number, :photo)
  end
end
