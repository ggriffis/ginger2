class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_main

  def set_main
    @is_main = false
  end
end
