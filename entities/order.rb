class Order
  include Validation

  attr_reader :book, :reader, :date

  def initialize(book, reader, date)
    @book = book
    @reader = reader
    @date = Date.parse(date)
    validate
  end

  private

  def validate!
    validate_string(@book, Book, 'book')
    validate_string(@reader, Reader, 'reader')
  end
end
