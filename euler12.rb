#!/usr/bin/ruby -w

require 'mathn'

class Integer
	def factor_count
		num = self
		primes = Prime.new
		count = 1
		until num == 1
			prime = primes.next
			current = 1
			while (num % prime).zero?
				num = num / prime
				current = current + 1
			end
			count = count * current
		end
		count			
	end
end

num, incr = 1, 2
puts "Started at #{Time.now}"
num, incr = num + incr, incr + 1 until num.factor_count > 500
puts "Number is #{num}"
puts "Finished at #{Time.now}"

