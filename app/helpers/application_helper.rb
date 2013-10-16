module ApplicationHelper
  def create_pretty_text(text_string)
    h(text_string).gsub(/\n/, '<br/>').html_safe
  end
end
