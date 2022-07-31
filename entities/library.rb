class Library
  include Storage

  attr_reader :authors, :books, :readers, :orders

  def initialize
    @authors = load('authors')
    @books = load('books')
    @readers = load('readers')
    @orders = load('orders')
  end

  def add(object)
    case object
    when Author
      @authors << object
    when Book
      @books << object
    when Reader
      @readers << object
    when Order
      @orders << object
    end
  end

  def save
    save_to_yaml(@authors)
    save_to_yaml(@books)
    save_to_yaml(@readers)
    save_to_yaml(@orders)
  end

  def most_popular_book(amount = 1)
    orders.group_by { |order| order.book.title }.transform_values { |value| value.size }.sort_by { |k, v| v }.reverse.to_h.keys.first(amount)
  end

  def the_best_reader(amount = 1)
    orders.group_by { |order| order.reader.name }.transform_values {|value| value.size }.sort_by { |k, v| v }.reverse.to_h.keys.first(amount)
  end

  def reader_most_popular_book(amaunt = 3)
    orders.uniq { |order| order.reader.email }
  end
end
