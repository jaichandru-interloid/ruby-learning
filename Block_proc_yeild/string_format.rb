trim=->(text){text.strip }
downcase_text=->(text){text.downcase }
capitalize_text=->(text){text.capitalize }

pipeline=->(text) do
    text=trim.call(text)
    text=downcase_text.call(text)
    text=capitalize_text.call(text)
    text
end
print "Enter a string: "
str=gets.chomp
result=pipeline.call(str)
puts "Formatted string: #{result}"