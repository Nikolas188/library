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

  def the_best_reader(orders, popular_readers = 1)
    group_by(orders, :reader, popular_readers)
  end

  def most_popular_book(orders, popular_book_count = 3)
    group_by(orders, :book, popular_book_count)
  end

  def readers_three_most_popular_books(orders, popular_book_count = 3)
    popular_orders = group_by(orders, :book).take(popular_book_count).map { |book_orders| book_orders[1] }
    popular_orders.flatten.map(&:reader).uniq.size
  end
end
