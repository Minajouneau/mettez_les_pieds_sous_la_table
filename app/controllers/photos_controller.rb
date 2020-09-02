class PhotosController < ApplicationController

  def create
    @photo = Photo.new(photo_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @photo.restaurant_id = @restaurant.id
    authorize @photo
    if @photo.save
      render partial: "photos/form", locals: { category: @photo.category, restaurant: @restaurant, photo: Photo.new }

    else
      render 'restaurants/edit'
    end
  end

  def destroy
    @photo = Photo.find(params[:id])
    authorize @photo
    @photo.destroy
    head :ok
  end

  private

  def photo_params
    params.require(:photo).permit(:category, :file)
  end

end
