class OrbitsController < ApplicationController
  def index
    @orbits = Orbit.all
  end
  def show
    @orbit = Orbit.find(params[:id])
  end
end