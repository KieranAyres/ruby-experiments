class Library
  def initialize
    @books = []
  end

  def add_book(title, author, genre)
    book = { title: title, author: author, genre: genre }
    @books << book
    puts "Book added successfully!"
  end

  def view_books
    puts "----- Library Catalog -----"
    if @books.empty?
      puts "No books in the library."
    else
      @books.each_with_index do |book, index|
        puts "#{index + 1}. #{book[:title]} by #{book[:author]} (Genre: #{book[:genre]})"
      end
    end
    puts "---------------------------"
  end

  def search_books(keyword)
    matching_books = @books.select { |book| book[:title].include?(keyword) || book[:author].include?(keyword) || book[:genre].include?(keyword) }

    puts "----- Search Results -----"
    if matching_books.empty?
      puts "No matching books found."
    else
      matching_books.each_with_index do |book, index|
        puts "#{index + 1}. #{book[:title]} by #{book[:author]} (Genre: #{book[:genre]})"
      end
    end
    puts "---------------------------"
  end
end

def main
  library = Library.new

  loop do
    puts "\nLibrary Tracking System Menu:"
    puts "1. Add Book"
    puts "2. View Books"
    puts "3. Search Books"
    puts "4. Exit"

    print "Enter your choice: "
    choice = gets.chomp.to_i

    case choice
    when 1
      print "Enter book title: "
      title = gets.chomp

      print "Enter author name: "
      author = gets.chomp

      print "Enter book genre: "
      genre = gets.chomp

      library.add_book(title, author, genre)

    when 2
      library.view_books

    when 3
      print "Enter search keyword: "
      keyword = gets.chomp

      library.search_books(keyword)

    when 4
      puts "Exiting the Library Tracking System. Goodbye!"
      break

    else
      puts "Invalid choice. Please enter a valid option."
    end
  end
end

# Run the main function
main