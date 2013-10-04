require 'active_record'
# require '../app/models/legislator'

ActiveRecord::Base.establish_connection(:adapter => 'sqlite3', :database => "#{File.dirname(__FILE__)}/../db/legislators.sqlite3")
