require 'sinatra'
require 'sinatra/reloader'
require 'pry'
also_reload('lib/**/*.rb')
require './lib/words'
require './lib/definitions'

get('/') do
  @words = Words.all()
  erb(:input)
end

post('/') do
  new_word = Words.new(params)
  definition = Definitions.new(params)
  new_word.save()
  new_word.add_definition(definition)
  @words = Words.all()
  erb(:input)
end

get('/output/:id') do
  @word = Words.find(params[:id])
  @definition_list = @word.definition_list
  erb(:output)
end

post('/output/:id') do
  @word = Words.find(params[:id])
  definition = Definitions.new(params)
  @word.add_definition(definition)
  @definition_list = @word.definition_list
  erb(:output)
end
