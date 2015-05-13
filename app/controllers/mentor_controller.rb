class MentorController < ApplicationController
  before_action :authorize
  def index
    @mentor = Mentor.find_by(id: session[:mentor_id])
    @orbits = @mentor.orbits
    @compressions = @mentor.compressions
  end
end