#!/usr/bin/ruby -w

def ispalindrome(number)
	array = number.to_s.split("")	
    reverse = Array.new(array)	
	array.reverse!
	array.eql?(reverse)
end

first = 999
second = 999
number =0
max = 0

while second > 99 
	number = first * second
	if ispalindrome(number) 
		if number > max 
			max = number
 		end   	
		first -= 1
	else
		if first > 99
			first -= 1
		else 
			second -= 1
			first = 999
		end
	end
end

print "\n The greatest palindrome is ", max
