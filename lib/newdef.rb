class News
  attr_accessor :new_def

  def initialize(attributes)
    @new_definition = attributes.fetch(:new_def)
  end

end
