require 'sinatra/base'
require "sinatra/json"
require 'haml'

class SimpleWordCount < Sinatra::Base
  helpers Sinatra::JSON

  set :haml, :format => :html5, :attr_wrapper => '"'

  get '/' do
    haml :index 
  end

  post '/count' do
    text = params[:text]
    words = text.split
    json :count => words.count
  end
end
