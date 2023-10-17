class HomeController < ApplicationController
  def index
    render html: "<html>chck response : '/fib?n=x'</html>".html_safe
  end
end
