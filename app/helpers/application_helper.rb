module ApplicationHelper
  #
  def current_path_class(path)
    'active' if current_page?(path)
  end

  def link_classes(path)
    "#{current_path_class(path)}"
  end
end
