#!/usr/bin/ruby -w

def gcd(a, b)
	remainder = a % b
	if(remainder == 0)	
		b
	else
		gcd(b, remainder)
	end
end

def lcm(num1, num2)
	num1*num2/gcd(num1,num2)
end

starts = 2 
number = starts 
ends = 20
starts.upto(ends) {|i|
	if(number % i != 0)
		number = lcm(number,i)
	end 
}
print "\n The number is ", number
