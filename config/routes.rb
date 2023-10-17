Rails.application.routes.draw do
  get "/", to: "fibonacci#root"
  get "fib" , to: "fibonacci#calculate"
end