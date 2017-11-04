module ApplicationHelper

  def full_title(title)
    content_for?(:title)? title: ""
  end
end

def bootstrap_class_for flash_type
  case flash_type
    when :success
      "alert-success"
    when :danger
      "alert-danger"
    when :warning
      "alert-warning"
    when :notice
      "alert-info"
    else
      flash_type.to_s
  end
end
