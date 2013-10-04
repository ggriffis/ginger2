class ContactController < ApplicationController
  def show
    @web_developer = WebDeveloper.singleton
    @github_link = @web_developer.github_link
    @twitter_link = @web_developer.twitter_link
    @linked_in_link = @web_developer.linked_in_link
    @resume_link = @web_developer.resume_link
    @blog_link = @web_developer.blog_link
  end
end
