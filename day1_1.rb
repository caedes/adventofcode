input = File.read 'inputs/day1.txt'

floor = 0

input.each_char do |char|
  floor += 1 if char == '('
  floor -= 1 if char == ')'
end

p floor
