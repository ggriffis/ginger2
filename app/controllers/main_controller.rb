class MainController < ApplicationController
  def index
    @web_developer = WebDeveloper.singleton
    if @web_developer && @web_developer.main_image
      @web_developer_image_url = @web_developer.main_image.image_url(:small).to_s
    else
      @web_developer_image_url = "web_dev.jpg"
    end
    @soprano = Soprano.singleton
    if @soprano && @soprano.main_image
      @soprano_image_url = @soprano.main_image.image_url(:small).to_s
    else
      @soprano_image_url = "profile pic.jpg"
    end
  end
end
