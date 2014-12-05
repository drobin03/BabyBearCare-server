module ApplicationHelper
  def active_path(page)
      if(current_page?(page))
          return "active"
      else
          return ""
      end
  end
end
