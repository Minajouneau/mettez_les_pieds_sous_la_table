class RestaurantsController < ApplicationController
  skip_before_action :authenticate_user!, only: :show

  def index
    @restaurants = policy_scope(current_user.restaurants).sort.reverse
    @restaurant = Restaurant.new
    @user = current_user
  end

  def show
    # if request.subdomain.present? && request.subdomain != "www"
    #   @restaurant = Restaurant.find_by!(subdomain: request.subdomain)
    # else
    @restaurant = Restaurant.geocoded.find(params[:id])
    # end
    @user = current_user
    @markers =
      [{
        lat: @restaurant.latitude,
        lng: @restaurant.longitude,
        image_url: helpers.asset_url("chef-icon-color.png"),
      }]
    authorize @restaurant
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
      create_schedules
      redirect_to restaurants_path
    else
      render "new"
    end
  end

  def create_schedules
    days = ["Lundi", "Mardi", "Mercredi", "Jeudi", "Vendredi", "Samedi", "Dimanche"]
    days.each do |day|
      Schedule.create(day:day, restaurant:@restaurant)
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
    @photo = Photo.new
    authorize @restaurant
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    authorize @restaurant
    @restaurant.update(restaurant_params)

    if params['redirection'] == 'true' && params[:commit] == "Enregistrer"
      redirect_to restaurants_path
    end
    # Will raise ActiveModel::ForbiddenAttributesError
  end

  def update_activation
    # raise
    @restaurant = Restaurant.find(params[:id])
    authorize @restaurant
    if @restaurant.activated
      @restaurant.update(activated: false)

    else
      @restaurant.update(activated: true)
    end
    redirect_to edit_restaurant_path(@restaurant)
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :contact_email, :activated, :domain_name, :description, :phone_number, :photo, :quote_one, :quote_two, :quote_three, :facebook_url, :instagram_url, :twitter_url, :booking_url)
  end
end
