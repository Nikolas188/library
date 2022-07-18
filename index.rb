require './autoload'

author = Author.new("John Doe")
book = Book.new("Ruby", author)
reader = Reader.new("Kek", "email.com", "city", "street", 4)
order = Order.new(book, reader, '22.06.2022')

library = Library.new
library.add(author)
library.add(book)
library.add(order)
library.add(reader)
library.save

puts library.orders.first.book.title
puts library.orders.first.book.author.name
puts library.orders.first.reader.name
