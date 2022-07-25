require './autoload'

author = Author.new("John Doe")
book = Book.new("Ruby", author)
reader = Reader.new("Kek", "email.com", "city", "street", 4)
order = Order.new(book, reader, '22.06.2022')
author1 = Author.new("Stephen King")
author2 = Author.new("Dan Brown")
author3 = Author.new("Ray Bradbury")

book1 = Book.new("The Shining", author1)
book2 = Book.new("Deception Point", author2)
book3 = Book.new("451 Pharyngate", author3)
reader1 = Reader.new("Bob", "cool.com", "Dnieper", "Shevchenko", 3)
reader2 = Reader.new("Jack", "dog.com", "Dnieper", "Victory", 2)
reader3 = Reader.new("Lol", "cat.com", "Dnieper", "Peace", 1)
orderc = Order.new(book1, reader1, '24.06.2022')

library = Library.new
library.add(author)
library.add(book)
library.add(order)
library.add(reader)
library.save

puts library.orders.first.book.title
puts library.orders.first.book.author.name
puts library.orders.first.reader.name
