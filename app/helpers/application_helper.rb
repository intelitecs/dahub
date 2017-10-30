module ApplicationHelper
  def full_title(title)
    content_for?(:title)? title: ""
  end
end
