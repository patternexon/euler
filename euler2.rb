#!/usr/bin/ruby -w

def nextFibonacci(first, second)
	return first+second
end

first = 0
second = 1
total = 0

while second <= 4000000
	sum = nextFibonacci(first, second)
	if second % 2 == 0 
		total += second
	end
	first = second
	second = sum
end

print "Total is ", total
