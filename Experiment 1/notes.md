## Library
***

#### Attributes:
List of books
List of patrons
List of transactions

#### Methods:
Add book
Remove book
Add patron
Remove patron
Check out book
Return book
List all books
List all patrons
List all transactions
LibraryApp

#### Methods:
Display a menu for the user with options like:
Add book
Remove book
Add patron
Remove patron
Check out book
Return book
List all books
List all patrons
List all transactions
Quit the application

Requirements Analysis - User Stories on Jira

def load_books
books = []

    if File.exist?('books.csv')
      CSV.foreach('books.csv', headers: true) do |row|
        # << is the append operator, it can add an element to an array - I DON'T LIKE THIS
        books << Book.new(row['Title'], row['Author'], row['Genre'])
      end
    end

    books
end

def save_books
CSV.open('books.csv', 'w', headers: ['Title', 'Author', 'Genre'], write_headers: true) do |csv|
@books.each do |book|
csv << [book.title, book.author, book.genre]
end
end
end
end

