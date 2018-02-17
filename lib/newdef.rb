class News
  @@newdef = []
  attr_accessor :newdef

  def initialize(attributes)
    @newdef = attributes.fetch(:newdef)
  end

  def save
    @@newdef.push(self)
  end

  def self.all()
    @@newdef
  end

end
