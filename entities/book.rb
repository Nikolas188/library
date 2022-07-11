class Book
  attr_reader :title, :author

  def initialize(title, author)
    @title = title
    @author = author
    validate
  end

  private

  def validate
    validate_class!(@title, String, 'title')
    validate_class(@author, Author, 'author')
  end
end
