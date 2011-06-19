#!/usr/bin/ruby -w

def read_digit(filename)
	number = ""
	File.open(filename,"r") do | file |
		while (line = file.gets)		
			number = number + line.chop
		end
	end
	print "\nThe number is #{number}"
	return number
end

number = read_digit(ARGV[0])
max = 0
digits = number.split(//)
for i in 0..(digits.length-5) do 
	prod = 1 
	0.upto(4) {|j| prod = prod * digits[i+j].to_i}
	if(prod > max)
		max = prod
	end
end 

print "\n The greatest product is #{max}"

