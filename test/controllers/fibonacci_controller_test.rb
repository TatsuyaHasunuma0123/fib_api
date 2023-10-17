require "test_helper"

class FibonacciControllerTest < ActionDispatch::IntegrationTest
  test "returns the correct Fibonacci number with a positive integer n" do
    get '/fib', params: { n: 5 }
    assert_response :success
    response_data = JSON.parse(response.body)
    assert_equal({ "n" => 5, "result" => 5}, response_data)

    get '/fib', params: { n: 10 }
    assert_response :success
    response_data = JSON.parse(response.body)
    assert_equal({ "n" => 10, "result" => 55}, response_data)
  end

  test "returns the correct Fibonacci number with n equal to 0 and 1" do
    get "/fib", params: { n: 1 }
    assert_response :success
    response_data = JSON.parse(response.body)
    assert_equal({ "n" => 1, "result" => 1}, response_data)
  end

  test 'returns an error with n equal to 0' do
    get "/fib", params: { n: 0 }
    assert_response :not_found
    response_data = JSON.parse(response.body)
    assert_equal({ "status" => 400, "message" => "Bad request"}, response_data)

    get "/fib", params: { n: "string" }
    assert_response :not_found
    response_data = JSON.parse(response.body)
    assert_equal({ "status" => 400, "message" => "Bad request"}, response_data)
  end
end
