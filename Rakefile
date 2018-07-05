namespace :db do
  desc 'migrate changes to your database'
  task :migrate => :environment do
    require_relative './config/environment'

    Student.create_table
  end
end
