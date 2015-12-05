areas = File.readlines('inputs/day2.txt').map do |line|
  dimensions = line.split('x').map(&:to_i)
  l = dimensions[0]
  w = dimensions[1]
  h = dimensions[2]

  lw = l * w
  wh = w * h
  hl = h * l

  2 * lw + 2 * wh + 2 * hl + [lw, wh, hl].min
end

p areas.inject { |a, e| a + e }
