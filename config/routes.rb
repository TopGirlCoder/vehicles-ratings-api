Rails.application.routes.draw do
	namespace :api, defaults: { format: :json } do
	  resources :cars do
	  	resources :ratings
		end
	end
end

	# namespace :api, 
	# 	defaults: { format: :json },
 #    constraints: { subdomain: 'api' }, 
 #    path: '/'   do