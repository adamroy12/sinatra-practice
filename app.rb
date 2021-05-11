require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  "hello!"
end

get '/secret' do
  "Has this worked?"
end

get '/hmm' do
  "Hmm?"
end

get '/random-cat' do
  @name = ["Amigo", "Misty", "Almond", "Reginald"].sample
  erb :index
end

post '/named-cat' do
  p params[:name]
  @name = params[:name]
  erb :index
end

get '/cat-form' do
  erb :cat_form
end