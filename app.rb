require 'sinatra'
require 'sinatra/activerecord'

ActiveRecord::Base.establish_connection(
	:adapter => 'sqlite3',
	:database => 'dev.db'
	)
ActiveRecord::Base.default_timezone=:local

get '/' do 
	erb:index
end