# == Route Map
#

Rails.application.routes.draw do
  root 'tracks#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :Api do
    namespace :Season_22 do
      #root "drivers/index"
      #resources :drivers
      #get "driver/index"
    end
  end


end
