# == Route Map
#

Rails.application.routes.draw do

root 'drivers#index'
  namespace :api do
    namespace :season22 do
      resources :tracks
    end
  end
  namespace :api do
    namespace :season22 do
      resources :drivers
    end
  end

end
