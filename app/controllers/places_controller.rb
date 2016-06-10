class PlacesController < ApplicationController
  def index
    @places = Place.all
    @places = Place.page(params[:page]).per(15)
  end

  def new
    @place = Place.new
  end

end
