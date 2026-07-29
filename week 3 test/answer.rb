# Class Book
class Book
  attr_reader :title, :author

  def initialize(title, author)
    @title = title
    @author = author
  end

  def to_s
    "#{title} by #{author}"
  end
end

# Module Searchable
module Searchable
  def find_book(title)
    @books.find { |book| book.title.downcase == title.downcase }
  end
end

# Class Library
class Library
  include Searchable

  @@total_libraries = 0

  def self.total_libraries
    @@total_libraries
  end

  def initialize
    @books = []
    @@total_libraries += 1
  end

  def add_book(book)
    @books << book
    puts "Book Added Successfully"
  end

  def borrow_book(title)
    book = find_book(title)

    if book
      @books.reject! { |b| b == book }
      puts "Book Borrowed Successfully"
    else
      puts "Book Not Available"
    end
  end

  def return_book(book)
    @books << book
    puts "Book Returned Successfully"
  end

  def available_books
    puts "\nAvailable Books"
    if @books.empty?
      puts "No books available"
    else
      @books.each { |book| puts book }
    end
  end
end

# ---------------- Main Program ----------------

library = Library.new

loop do
  puts "\n===== Library Menu ====="
  puts "1. Add Book"
  puts "2. Borrow Book"
  puts "3. Return Book"
  puts "4. View Available Books"
  puts "5. Exit"

  print "Choice : "
  choice = gets.to_i

  case choice
  when 1
    print "Book Title  : "
    title = gets.chomp

    print "Book Author : "
    author = gets.chomp

    library.add_book(Book.new(title, author))

  when 2
    print "Book Title : "
    title = gets.chomp

    library.borrow_book(title)

  when 3
    print "Book Title  : "
    title = gets.chomp

    print "Book Author : "
    author = gets.chomp

    library.return_book(Book.new(title, author))

  when 4
    library.available_books

  when 5
    puts "Exiting..."
    puts "Total Libraries Created: #{Library.total_libraries}"
    break

  else
    puts "Invalid Choice"
  end
end