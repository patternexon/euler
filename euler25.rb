#!/usr/bin/ruby -w


a = 1 
b = 1 
count = 1
max = 1000

until b.to_s.length >= max 
	puts "#{b}\t#{count}"
	c = a 
	a = b
	b = c + a
	count = count + 1
end
