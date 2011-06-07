#!/usr/bin/ruby
#Mon Jun  6 21:52:58 EDT 2011

class String
    def palindrome?
        rev = self.reverse
        if rev == self
            return true
        else
            return false
        end
    end
end

def to_base2 (num)
    return num.to_s(2)
end

sum = 0
(1..1000000).each do |i|
    if i.to_s.palindrome? && to_base2(i).palindrome?
        sum = sum + i
        puts "#{i} is a palindrome: #{i.to_s.palindrome?}"
        puts "#{to_base2(i)} is a palindrome: #{to_base2(i).palindrome?}"
    end
end
puts "The sum is #{sum}"
