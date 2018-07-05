require 'active_record'

DB = ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/teams.sqlite"
)

  #DB = ActiveRecord::Base.connection

  #if ENV["ACTIVE_RECORD_ENV"] == "development"
  #  ActiveRecord::Migration.verbose = false
  #end
