require 'sinatra'
require "sinatra/json"
require 'haml'

set :haml, :format => :html5, :attr_wrapper => '"'

get '/' do
  haml :index 
end

post '/count' do
  text = params[:text]
  words = text.split
  json :count => words.count
end
