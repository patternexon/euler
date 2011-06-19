#!/usr/bin/ruby -w

i = 1
sum = 0
until i > ARGV[0].to_i do
	sum += i**i
	puts sum
	i = i + 1
end

puts sum.to_s[-10,10]
