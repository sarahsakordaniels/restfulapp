require "sinatra/activerecord"
require "require_all"
require_all "lib"
require_relative "../app.rb"

ActiveRecord::Base.establish_connection(
  adapter: "sqlite3",
  database: "db/mattresses.db"
)
