class Password
    def initialize(p_word)
        @password=p_word
    end

    def login(entered_pass)
        if validate(entered_pass)
            puts"Logging in"
        else
            puts"Incorrect password"
        end
    end

    def validate(entered_pass)
        @password==entered_pass
    end
end
print"Create a password:"
pass=gets.chomp

control=Password.new(pass)

print"Enter your password to login:"
n_pass=gets.chomp
control.login(n_pass)