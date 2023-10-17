Rails.application.routes.draw do
  get "/", to: "fibonacci#calculate"
  get "fib" , to: "fibonacci#calculate"
end