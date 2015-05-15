class SatellitesController < ApplicationController
  before_action :authorize, only: :destroy
  def index
    @satellites = Satellite.all
    @satellites = @satellites.order(:acronym)
  end
  def new
    @satellite = Satellite.new
  end
  def create
    @satellite = Satellite.new(satellite_params)
    if @satellite.save
      redirect_to @satellite
    else
      render 'new'
    end
  end
  def show
    @satellite = Satellite.find(params[:id])
  end
  def destroy
    Satellite.find(params[:id]).destroy
    redirect_to satellites_url
  end
  private
  def satellite_params
    params.require(:satellite).permit(:acronym,:full_name,:norad_id,:nssdc_id)
  end
end