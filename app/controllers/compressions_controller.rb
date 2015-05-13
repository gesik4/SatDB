class CompressionsController < ApplicationController
  def index
    @compressions = Compression.all
  end
  def show
    @compression = Compression.find(params[:id])
  end
end