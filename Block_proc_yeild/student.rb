grade_generator=->(mark) do
    case mark
    when 80..100
        grade="A"
    when 66...80
        grade="B"
    when 50..65
        grade="C"
    else
        grade="Reappear"
    end
end

print"Enter the mark:"
mark=gets.chomp.to_i
grade=grade_generator.call(mark)

puts"Grade: #{grade}"