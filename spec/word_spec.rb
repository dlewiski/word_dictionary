require 'rspec'
require 'word_dictionary'
require 'pry'


describe('word_dictionary') do
  before() do
    Word.clear
  end
end

describe("#save") do
  it("takes input from the user and adds it to a list of contacts") do
  new_word = Word.new({:word=>"Jimichanga",  :definition=>"Just like a chimichanga but better!"})
  new_word.save()
  expect(Word.all()).to(eq([new_word]))
  end
end

describe(".clear") do
  it ('clears the array') do
    new_word = Word.new(:word => "Jimichanga", :definition =>"Just like a chimichanga but better!")
    new_word.save()
    Word.clear()
    expect(Word.all()).to(eq([]))
  end
end

describe("#id") do
    it("adds one to the id") do
      new_word = Contact.new({:name1 => 'joe', :name2 => 'smith', :address => '123 fake st', :job => 'Banker'})
      item.save()
      item2 = Contact.new({:name1 => 'big', :name2 => 'rodger', :address => '503 Rodger Ave', :job => 'Library'})
      item2.save()
      expect(item.id()).to(eq(1))
      expect(item2.id()).to(eq(2))
    end
  end
