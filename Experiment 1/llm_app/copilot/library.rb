# frozen_string_literal: true

class Library
  def initialize
    @books = []
  end

  def add_book(title, author)
    @books << Book.new(title, author)
  end

  def check_out(title)
    book = @books.find { |book| book.title == title }
    if book && book.status == 'available'
      book.status = 'checked out'
      puts "#{title} has been checked out."
    else
      puts "#{title} is not available."
    end
  end

  def check_in(title)
    book = @books.find { |book| book.title == title }
    if book && book.status == 'checked out'
      book.status = 'available'
      puts "#{title} has been checked in."
    else
      puts "#{title} is not checked out."
    end
  end

  def list_books
    @books.each do |book|
      puts "#{book.title} by #{book.author} is currently #{book.status}."
    end
  end
end

library = Library.new
library.add_book('The Great Gatsby', 'F. Scott Fitzgerald')
library.add_book('To Kill a Mockingbird', 'Harper Lee')
library.list_books
library.check_out('The Great Gatsby')
library.list_books
library.check_in('The Great Gatsby')
library.list_books