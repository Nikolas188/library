class Book
  attr_reader :title, :author

  def initialize(title, author)
    @title = title
    @author = author
    validate
  end

  private

  def validate
    validate_string(@title, 'title')
    validate_string(@autor, 'autor')
end
