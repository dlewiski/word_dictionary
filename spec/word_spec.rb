require 'rspec'
require 'definitions'
require 'words'
require 'pry'

describe('word_dictionary') do
  before() do
    Words.clear
  end
end

describe("#save") do
  it("takes word and definition from the user and saves it") do
  new_word = Words.new({:word=>"Jimichanga", :definition_list=>"Just like a chimichanga but better!"})
  new_word.save()
  end
end

describe(".clear") do
  it ('clears the array') do
    new_word = Words.new(:word => "Jimichanga", :definition_list =>"Just like a chimichanga but better!")
    new_word.save()
    Words.clear()
    expect(Words.all()).to(eq([]))
  end
end

describe("#id") do
    it("adds one to the id") do
      new_word = Words.new({:word=>"Chimichanga"})
      new_word.save()
      new_word2 = Words.new({:word=>"Tamale"})
      new_word2.save()
      expect(new_word.id()).to(eq(1))
      expect(new_word2.id()).to(eq(2))
    end
  end
