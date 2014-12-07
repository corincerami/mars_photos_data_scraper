require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

get '/' do
  # finds the most recent martian sol for which a phot exists
  @most_recent = images.sort_by { |hash| -hash[:sol].to_i }.first[:sol]
  erb :home
end

get '/sol' do
  erb :show
end
