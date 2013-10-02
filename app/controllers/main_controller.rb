class MainController < ApplicationController
  def index
    @web_developer = WebDeveloper.all.first
    if @web_developer && @web_developer.main_image
      @web_developer_image_url = @web_developer.main_image.image.to_s
    else
      @web_developer_image_url = "web_dev.jpg"
    end
  end
end
