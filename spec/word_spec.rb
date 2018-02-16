require 'rspec'
require 'word_dictionary'
require 'pry'


describe('word_dictionary') do
  before() do
    Word.clear
  end
  describe("#save")
  it("takes input from the user and adds it to a list of contacts") do
    new_word = Word.new({:word=>"Jimichanga", :definition=>"Just like a chimichanga but better!"})
    new_word.save()
    expect(Word.all()).to(eq([new_word]))
  end
end
