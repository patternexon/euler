#!/usr/bin/ruby -w

def isprime(number)
	if number % 2 == 0
		return false;
	elsif
		for i in 3...Math.sqrt(number)+1 do 
			if number % i == 0
				return false;
			end
		end
	end
	return true;
end

count = 1
number = 2
limit = ARGV[0].to_i
until  limit == count
	if isprime(number) == true
		count = count + 1
	end
	number = number + 1
end

print "\nThe #{limit}th prime is #{number-1}\n"




