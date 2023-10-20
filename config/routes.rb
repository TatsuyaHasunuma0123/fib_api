Rails.application.routes.draw do
  root "home#index"
  get "fib" , to: "fibonacci#calculate"
end