class WebDeveloperTrainingsController < ApplicationController
  def index
    @web_developer = WebDeveloper.singleton
    @trainings = @web_developer.sorted_trainings
  end

  def show
    @training = WebDeveloperTraining.find(params[:id])
  end
end
