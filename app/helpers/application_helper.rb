module ApplicationHelper
  def title
    "Lifelogline"
  end
  
  def about
    "<p>Go to /signin to connect your accounts</p><p>See also: app/helpers/application_helper.rb</p>".html_safe
  end
end
