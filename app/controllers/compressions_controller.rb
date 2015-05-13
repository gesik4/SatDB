class CompressionsController < ApplicationController
  def index
    @compressionss = Compression.all
  end
  def show
    @compression = Compression.find(params[:id])
  end
end