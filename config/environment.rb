require 'active_record'

DB = ActiveRecord::Base.establish_connection(
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

  #if ENV["ACTIVE_RECORD_ENV"] == "development"
  #  ActiveRecord::Migration.verbose = false
  #end
