require 'sinatra/base'

class Diary < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/add' do
    @entry = params[:new_entry]
    erb(:add_entry)
  end

  # get '/add' do
  #   @entry = session[:entry]
  #   erb(:add_entry)
  # end

end
