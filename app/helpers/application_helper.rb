module ApplicationHelper

  def full_title(page_title = '')
    base_title = "Peak Fall 2017 English"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
end
