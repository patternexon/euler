#!/usr/bin/ruby -w

class Integer
	def factorial
		return 1 if self == 0
		return 1 if self == 1
		return 2 if self == 2
		return 6 if self == 3
		return 24 if self == 4
		return 120 if self == 5
		return 720 if self == 6
		return 5040 if self == 7
		return 40320 if self == 8
		return 362880 if self == 9
		(1..self).inject { |i,j| i*j}
	end

end
def iscurious? (number)
		size = number.to_s.length-1
		sum = 0
		0.upto(size) do |i|
			 sum += number.to_s[i,1].to_i.factorial
#			puts number.to_s[i,1].to_i.factorial
		end
		if sum == number
			return true
		else 
			return false
		end
end

i = 10
total = 0

#puts iscurious?(40585)
until i == 999999 do
	 if iscurious?(i)
		puts i
		total += i
	 end
	 i += 1
end

puts total
