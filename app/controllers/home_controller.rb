class HomeController < ApplicationController
  def index
    render html: "<html>Top page</html>".html_safe
  end
end
