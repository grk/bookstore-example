module ApplicationHelper
  def active_for(*paths)
    "active" if paths.any? do |path|
      controller, action = path.split("/")
      controller == controller_name && (action.blank? || action == action_name)
    end
  end

  def bootstrap_class_for(flash_type)
    case flash_type
      when :success
        "alert-success"
      when :error
        "alert-error"
      when :alert
        "alert-warning"
      when :notice
        "alert-info"
      else
        flash_type.to_s
    end
  end
end
