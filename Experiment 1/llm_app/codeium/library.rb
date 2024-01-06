# frozen_string_literal: true

class Library
  def initialize
    @books = []
  end

  def add_book(title, author, genre)
    book = Book.new(title, author, genre)
    @books << book
  end

  def list_books
    @books.each { |book| puts book }
  end
end

library = Library.new

loop do
  puts "Welcome to the Library Tracking System!"
  puts "Please choose an option:"
  puts "1. Add a book"
  puts "2. List all books"
  puts "3. Exit"

  choice = gets.chomp.to_i

  case choice
  when 1
    puts "Enter the title of the book:"
    title = gets.chomp
    puts "Enter the author of the book:"
    author = gets.chomp
    puts "Enter the genre of the book:"
    genre = gets.chomp

    library.add_book(title, author, genre)
  when 2
    library.list_books
  when 3
    puts "Thank you for using the Library Tracking System. Goodbye!"
    break
  else
    puts "Invalid choice. Please try again."
  end

  puts "\n"
end