#Question 25
def adding(cart)
    print "Enter Item Name: "
    name = gets.chomp
    print "Enter Item Price: "
    price = gets.to_i
    item = {}
    item["name"] = name
    item["price"] = price
    cart[cart.length] = item
    puts "Item Added Successfully"
end

def removing(cart)
    print "Enter Item Name to Remove: "
    name = gets.chomp
    found = false
    i = 0
    while i < cart.length
        if cart[i]["name"] == name
        j = i
        while j < cart.length - 1
            cart[j] = cart[j + 1]
            j = j + 1
        end
        cart[cart.length - 1] = nil
        found = true
        puts "Item Removed Successfully"
        break
        end
        i = i + 1
    end
    if found == false
        puts "Item Not Found"
    end
end

def display(cart)
    total = 0
    i = 0
    while i < cart.length
        if cart[i] != nil
        puts "#{cart[i]["name"]} - #{cart[i]["price"]}"
        total = total + cart[i]["price"]
        end
        i = i + 1
    end
    puts "Total Bill = #{total}"
end
cart = {}
option=true
while option==true
    puts ".... Menu ...."
    puts "1. Add Item"
    puts "2. Remove Item"
    puts "3. Show Cart"
    puts "4. Exit"
    print "Enter Choice: "
    choice = gets.to_i
    case choice
    when 1
        adding(cart)
    when 2
        removing(cart)
    when 3
        display(cart)
    when 4
        puts "Thank You!"
        break
    else
        puts "Invalid Choice"
    end
end