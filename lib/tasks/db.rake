namespace :db do 
	task all: [:drop, :create, :migrate, :seed] do
	end
end	