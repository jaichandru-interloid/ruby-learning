class Book
    def initialize(data)
        @data=data
    end

    def add_new
        print"Enter the title:"
        title=gets.chomp.downcase.capitalize
        print"Enter the author name:"
        name=gets.chomp.capitalize
        print"Enter the price of the book:"
        price=gets.chomp.to_i
        detail={
            title: title,
            author: name,
            price: price,
        }
        @data << detail
        puts"Added successfully...!"
    end

    def display_details
        puts"----------------Books-----------------"
        @data.each do|detail|
            puts"Title  : #{detail[:title]}"
            puts"Author : #{detail[:author]}"
            puts"Price  : #{detail[:price]}"
            puts"--------------------------------"
        end
    end
end

data=[]
book=Book.new(data)
loop do
    puts "-------------MENU-----------------"
    puts "1. Add"
    puts "2. Display"
    puts "3. Exit"

    print"Enter your choice: "
    choice=gets.chomp.to_i
    case choice
    when 1
        book.add_new
    when 2
        book.display_details
    when 3
        puts"Exiting...."
        break
    else
        puts"Invalid Choice...!"
    end
end