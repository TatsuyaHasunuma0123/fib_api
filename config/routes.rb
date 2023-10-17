Rails.application.routes.draw do
  get "/","fib" , to: "fibonacci#calculate"
end