def add_book(books)
  print "Enter book title: "
  title = gets.chomp
  print "Enter author name: "
  author = gets.chomp
  book= {
    title:title,
    author: author,
    status: "Available",
    borrower: nil
  }
  books<< book
  puts "Book added successfully!"
end

def search_book(books)
  print "Enter book title to search: "
  title = gets.chomp
  if books.key?(title)
    book = books[title]
    puts "Title : #{title}, \nAuthor : #{book[:author]}, \nStatus : #{book[:status]}, \nBorrower : #{book[:borrower]}"
  else
    puts "Book not found!"
  end
end

def issue_book(books)
  print "Enter book title to issue: "
  title = gets.chomp
  if books.key?(title)
    if books[title][:status] == "Issued"
      puts "Book is already issued to #{books[title][:borrower]}."
    else
      print "Enter member name: "
      books[title][:borrower]  = gets.chomp
      books[title][:status] = "Issued"
      puts "Book issued successfully to #{member}."
    end
  else
    puts "Book not found!"
  end
end

def return_book(books)
  print "Enter book title to return: "
  title = gets.chomp

  if books.key?(title)
    if books[title][:status] == "Available"
      puts "Book is already available."
    else
      books[title][:status] = "Available"
      books[title][:borrower] = nil

      puts "Book returned successfully."
    end
  else
    puts "Book not found!"
  end
end

def display_books(books)
  if books.empty?
    puts "No books in the library."
    return
  end
  puts ".... Library Books ...."
  books.each do |title, details|
    puts "Title : #{title}, \nAuthor : #{book[:author]}, \nStatus : #{book[:status]}, \nBorrower : #{book[:borrower]}"
  end
end

books = {}
while true
  puts "....Library Management System ...."
  puts "1. Add Book"
  puts "2. Search Book"
  puts "3. Issue Book"
  puts "4. Return Book"
  puts "5. Display All Books"
  puts "6. Exit"

  print "Enter your choice: "
  choice = gets.chomp.to_i

  case choice
  when 1
    add_book(books)
  when 2
    search_book(books)
  when 3
    issue_book(books)
  when 4
    return_book(books)
  when 5
    display_books(books)
  when 6
    puts "Thank you!"
    break
  else
    puts "Invalid choice!"
  end
end