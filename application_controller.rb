require 'bundler'
Bundler.require
require_relative 'models/model.rb'

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/choose_gem' do
    userMonth = params[:month]
    birthstoneInfo = choose_gem(userMonth)
    @stone = birthstoneInfo[0]
    @image = birthstoneInfo[1]
    erb :results 
  end
    
  post '/getGif' do
    userSearch = params[:search]
    @gif = getGif(userSearch)

    erb :results
  end
  
  
end