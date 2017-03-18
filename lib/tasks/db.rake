# bundle exec rake db:all
namespace :db do 
	task all: [:drop, :create, :migrate, :seed] do
	end
end	

# bundle exec rake github:commit["my message"] 
namespace :github do
  desc "›› Commit with message"
  task :commit, [:message] => :environment do |task, args|
    sh %{ git add . }
    sh %{ git commit -m "#{args.message}" }
    sh %{ git pull }
    sh %{ git push}
  end	
end	