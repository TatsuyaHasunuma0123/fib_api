class FibonacciController < ApplicationController
  

  def calculate
    if params[:n] =~ /^[1-9]\d*$/
      n = params[:n].to_i
      result = fibonacci(n)
      render json: { n: n, result: result }
    else
      render json: { status: 400, message: "Bad request" }, status: :not_found
    end
  end

  private
  $memo = []

  def fibonacci(n)
    if n <= 0
      return 0
    elsif n == 1
      return 1
    else
      return $memo[n] ||= fibonacci(n - 1) + fibonacci(n - 2)
    end
  end
end
