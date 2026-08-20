def length_of_longest_substring(s)
  last_seen = {}
  left = 0
  max_length = 0

  s.chars.each_with_index do |char, right|
    if last_seen.key?(char) && last_seen[char] >= left
      left = last_seen[char] + 1
    end
    last_seen[char] = right
    max_length = [max_length, right - left + 1].max
  end

  max_length
end
