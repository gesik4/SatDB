class CompressionsController < ApplicationController
  def index
    @compressions = Compression.all
  end
  def show
    @compressions = Compression.find(params[:id])
  end
end