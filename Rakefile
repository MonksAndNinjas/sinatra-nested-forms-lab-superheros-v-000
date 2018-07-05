namespace :db do
  desc 'migrate changes to your database'

  task :environment do
    require_relative './config/environment'
  end

  task :migrate => :environment do
    Team.create_table
  end
end
