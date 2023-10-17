Rails.application.routes.draw do
  Rails.application.routes.draw do
    root "home#index"
  end
  get "fib" , to: "fibonacci#calculate"
end