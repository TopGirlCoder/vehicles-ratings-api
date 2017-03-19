Rails.application.routes.draw do
	namespace :api, defaults: { format: :json } do
	  resources :cars
	  resources :ratings
	end
end

	# namespace :api, 
	# 	defaults: { format: :json },
 #    constraints: { subdomain: 'api' }, 
 #    path: '/'   do