#!/usr/bin/ruby
# Tue Jun  7 22:30:01 EDT 2011

class Integer
    def prime?
        if self % 2 == 0
            return false
        end
        if self == 2 || self == 3
            return true
        end
        (2..Math.sqrt(self)).each do |i|
            if self % i == 0
                return false
            end
        end
        return true
    end
end


def check_limit (a, b, n)
    num = n**2 + a*n + b
    if num < 2
        return 0
    end
    if num.prime?
        check_limit(a, b, n+1)
    else
        return n
    end
end


limit, product = 0, 0

(-999..1000).each do |i|
    (-999..1000).each do |j|
#        puts "This is #{i} and #{j}"
        new_limit = check_limit(i, j, 2)
        if new_limit > limit
            limit = new_limit
            product = i * j
            puts "a=#{i}, b = #{j} and the product is #{product}"
        end
    end
end

puts "The product is #{product} and the limit is #{limit}"
