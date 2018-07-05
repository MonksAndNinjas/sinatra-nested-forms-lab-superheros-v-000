ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

connection = ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/teams.sqlite"
)

sql = <<-SQL
  CREATE TABLE IF NOT EXISTS teams (
    id INTEGER PRIMARY KEY,
    name TEXT,
    motto TEXT
  )
SQL

  ActiveRecord::Base.connection.execute(sql)

require_all 'app'
