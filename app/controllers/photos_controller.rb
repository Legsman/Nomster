class PhotosController < ApplicationController
  before_action :authenticate_user!
  def create
    @place = Place.find(params[:place_id])
    @place.photos.create(photo_params)
    redirect_to place_path(@place)
  end

  def create_user_photo
    @user = User.find(params[:user_id])
    @user.photos.create(photo_params)
    redirect_to user_path(@user)
  end

  private

  def photo_params
    params.require(:photo).permit(:caption, :picture)
  end
end
