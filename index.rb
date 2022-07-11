require './autoload'

autor = Author.new("John Doe")
book = Book.new("Ruby", autor)
reader = Reader.new("Kek", "email.com", "city", "street", 4)
order = Order.new(book, reader, '22.06.2022')

library = LIbrary.new
library.add(author)
library.add(book)
library.add(order)
library.add(reader)
library.save

puts order.book.title
puts order.reader.name
puts order.book.author.name
