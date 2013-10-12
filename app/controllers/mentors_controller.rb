class MentorsController < ApplicationController
  def show
    @mentor = Mentor.find(params[:id])
  end
end
