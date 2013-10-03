class WebDeveloperEndorsementsController < ApplicationController
  def index
    @web_developer = WebDeveloper.singleton
    @endorsements = @web_developer.sorted_endorsements
  end

  def show
    @endorsement = WebDeveloperEndorsement.find(params[:id])
  end
end
