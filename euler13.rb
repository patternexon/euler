#!/usr/bin/ruby -w

def readfile(filename)
	file = File.new(filename, "r")
	numbers = Array.new
	while( line = file.gets )
		numbers.push(line.to_i)
	end
	return numbers
end

sum = 0
readfile(ARGV[0]).each {|i| sum = sum + i}
puts sum

