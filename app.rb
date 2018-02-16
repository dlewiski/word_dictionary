require 'sinatra'
require 'sinatra/reloader'
require 'pry'
also_reload('lib/**/*.rb')
require './lib/word_dictionary'

get('/') do
  @words = Word.all()
  erb(:input)
end
