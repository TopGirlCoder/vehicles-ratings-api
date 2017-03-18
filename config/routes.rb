Rails.application.routes.draw do
	namespace :api do
	  resources :cars
	  resources :ratings
	end
end
