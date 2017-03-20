Rails.application.routes.draw do
	namespace :api, defaults: { format: :json } do
	  resources :cars do
	  	resources :ratings
		end
	end
end
