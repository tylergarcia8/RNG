class LocationsController < ApplicationController
  def index
    @location = Location.all
  end

  def create
    @location = Location.find_or_create_by(location_params)
    current_user.update(location: @location)
  end

  def new
    @location = Location.new
  end

  def show
    @location = Location.find(params[:id])
  end

  private

  def location_params
    params.require(:location).permit(:city, :region, :country)
  end
end
