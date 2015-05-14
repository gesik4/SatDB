class CompressionsController < ApplicationController
  before_action :authorize, only: :destroy
  def index
    @compressions = Compression.all
  end
  def new
    @compression = Compression.new
  end
  def create
    @compression = Compression.new(compression_params)
    if @compression.save
      redirect_to @compression
    else
      render 'new'
    end
  end
  def show
    @compression = Compression.find(params[:id])
  end
  def destroy
    Compression.find(params[:id]).destroy
    redirect_to compressions_url
  end
  private
  def compression_params
    params.require(:compression).permit(:name,:description)
  end
end