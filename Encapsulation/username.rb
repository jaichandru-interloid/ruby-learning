class Userprofile
    attr_reader :username
    attr_accessor :email
    attr_writer :password
    def initialize(username,email,password)
        @username=username
        @email=email
        @password=password
        summary
    end

    def summary
        if validate
            puts"----------Summary---------------"
            puts"User name: #{@username}"
            puts"Email    : #{@email}"
            puts"Password : *Not readable*"
        else
            puts"Invalid mail"
        end
    end

    private
    def validate
        @email.include?("@") && @email.include?(".")
    end
        

end

user1=Userprofile.new("John","john@example.com","12345")
user2=Userprofile.new("Tony","tony@example.com","678910")

puts user1.username
puts user1.email
# puts user1.password

user1.email="john01@gmail.com"
user1.summary

user1.username="Johnathon"
user1.summary




