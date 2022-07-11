class Author
  attr_reader :name, :biography

  def initialize(name, biography = "")
    @name = name
    @biography = biography
    validate
  end

  def validate
    validate_string(@name, 'name')
    validate_integer(@name, 'name')
    validate_not_empty(@name, 'name')
    validate_string(@biography, 'biography')
  end
end
