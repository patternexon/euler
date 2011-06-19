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

number = ARGV[0]
half = ARGV[0].to_i / 2
half.downto(3) { |i|
	if ARGV[0].to_i % i == 0 
    	if isprime(i)
    		print i
			break
    	end
    end
}





