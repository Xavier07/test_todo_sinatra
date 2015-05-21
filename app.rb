require 'sinatra'
require 'sinatra/activerecord'

ActiveRecord::Base.establish_connection(
	:adapter => 'sqlite3',
	:database => 'dev.db'
	)
ActiveRecord::Base.default_timezone=:local

class Testodo < ActiveRecord::Base
end

get '/' do 
	 @testodos = Testodo.all()
     @title = "Todo" 
	erb:index
end

post '/' do
	delete = Testodo.find(tache: 'test')
	delete.all
end

post '/' do
	@to = Testodo.new(params[:testodos])
	@to.save
	redirect '/'
end