module ApplicationHelper
  def hbr(text)
    h(text).gsub(/\r\n?|\n/, "<br />").html_safe
  end
end
