class AgenciesController < ApplicationController
  before_action :authorize, only: :destroy
  def index
    @agencies = Agency.all
  end
  def new
    @agency = Agency.new
  end
  def create
    @agency = Agency.new(agency_params)
    if @agency.save
      redirect_to @agency
    else
      render 'new'
    end
  end
  def show
    @agency = Agency.find(params[:id])
  end
  def destroy
    Agency.find(params[:id]).destroy
    redirect_to agencies_url
  end
  private
  def agency_params
    params.require(:agency).permit(:acronym,:full_name)
  end
end