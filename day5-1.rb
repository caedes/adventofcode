strings = File.readlines 'inputs/day5.txt'

strings.reject! do |string|
  vowels_size = string.scan(/[aeiou]/).size
  doublons_size = string.scan(/(\w)(\1+)/).size
  vowels_size < 3 || doublons_size == 0
end

strings.reject! do |string|
  string =~ /ab|cd|pq|xy/
end

p strings.size
