#!/usr/bin/ruby -w

def add(total,num)
	total += num
	return total
end

total = 0
limit = 1000

0.upto(limit-1) do |num|
	if(num % 3 == 0)
		total = add(total,num)
    elsif(num % 5 == 0)
		total = add(total,num)
	end
end

print "Total is ",total
