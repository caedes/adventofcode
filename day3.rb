require 'set'

input = File.read 'inputs/day3.txt'

current_coords = [0, 0]
visited_coords = Set.new
visited_coords << current_coords

input.each_char do |char|
  current_coords[0] += 1 if char == '>'
  current_coords[0] -= 1 if char == '<'

  current_coords[1] += 1 if char == '^'
  current_coords[1] -= 1 if char == 'v'

  visited_coords << current_coords
end

p visited_coords.size
