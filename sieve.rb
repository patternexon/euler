#!/usr/bin/ruby -w
# Tue Nov 17 00:06:30 EST 2009
# Under GPL v3.0
class Integer

#	Sift the Twos and sift the Threes,
#	The Sieve of Eratosthenes.
#	When the multiples sublime,
#	The numbers that remain are Prime.

	def primes_upto(limit)
		primes = Array.new
		putative = Array(2..limit)
		putative.each_index do |i|
			primes.push(putative[i])
			(i+1).upto(putative.size-1) do |j|
				putative[j] = nil if putative[j] % putative[i] == 0
			end
			putative.compact!
		end
		return primes
	end
	def prime?
		if self == self.primes_upto(self).last 
			return true
		else
			return false
		end
	end
end

1.upto(100){ |i| puts "#{i} -> #{i.prime?}" }
