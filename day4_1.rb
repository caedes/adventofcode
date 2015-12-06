require 'digest'

input = 'yzbqklnj'
result = nil

(1...300_000).each do |i|
  md5 = Digest::MD5.new
  md5.update "#{input}#{i}"

  break result = i if md5.hexdigest[0..4] == '00000'
end

p result
