require 'sinatra'
require 'haml'

set :haml, :format => :html5, :attr_wrapper => '"'

get '/' do
  haml :index 
end

post '/count' do
  text = params[:text]
  words = text.delete("'").split /\W+/
  "Count: #{words.count}"
end
