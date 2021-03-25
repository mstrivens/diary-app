require 'sinatra/base'
require './lib/diary'

class MyDiary < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/add' do
    # @entry = params[:new_entry]
    Diary.add(params[:title], params[:new_entry])
    @title = Diary.title.last
    @entry = Diary.all.last
    erb(:add_entry)
  end

  # get '/add' do
  #   @entry = Diary.all.last
  #   erb(:add_entry)
  # end

end
