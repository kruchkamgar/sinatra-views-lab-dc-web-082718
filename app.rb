require 'date'
require 'pry'


class App < Sinatra::Base

	get '/' do
		erb :index
	end

	get '/hello' do
		erb :hello
	end

	get '/goodbye' do
		@name = "Joe"
		erb :goodbye
	end

	get '/date' do
		date = DateTime.now
		# @date = "#{date.day}, #{date.month} #{date.day}, #{date.year}."
		@date = date.strftime('%A, %B %-d, %Y')
		binding.pry
		erb :date
	end

end
