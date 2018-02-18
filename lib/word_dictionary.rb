class Word
  @@dictionary = []
  attr_accessor :word, :definition, :newdef
  attr_reader :id

  def initialize(attributes)
    @word = attributes.fetch(:word)
    @definition = attributes.fetch(:definition)
    @newdef= []

    @id = @@dictionary.length + 1
  end

  def add_definition (newdef)
    @newdef.push(newdef)
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

  def self.find(id)
  word_id = id.to_i
  @@dictionary.each do |definition|
    if definition.id == word_id
      return definition
    end
  end
end
end
