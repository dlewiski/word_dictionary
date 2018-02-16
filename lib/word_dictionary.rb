class Word
  @@dictionary = []
  attr_accessor :word, :definition
  attr_reader :id

  def initialize(attributes)
    @word = attributes.fetch(:word)
    @definition = attributes.fetch(:definition)

    @id = @@dictionary.length + 1
  end

  def save
    @@dictionary.push(self)
  end

  def self.all()
    @@dictionary
  end

  def self.clear()
    @@dictionary = []
  end
end
