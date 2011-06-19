#!/usr/bin/ruby
# Mon Jun 13 22:29:54 EDT 2011

###
# Unspiral - the array unspiral
# R_Corners - the at the right corner of each square the gap between 
#             elements of the diagonal increases by root of R_corner, i.e.
#             1_3_5_7_[9]_ _ _13 _ _ _ 17 _ _ _ 21 _ _ _ [25]



def add_diagonals (unspiral, r_corners)
    i, j, sum, a = 0, 0, 0.0, 1.0
    while i < unspiral.length
        current = unspiral[i]
        sum = sum + current 
#        puts "sum=#{sum}, current=#{current}, i=#{i}, a=#{a}, corner=#{r_corners[j]}"
        if(current == r_corners[j])
            a = Math.sqrt(current)
            j = j + 1
        end
        i = i + a + 1
    end
    return sum
end

size = 1001
unspiral = Array(1..(size**2))
r_corners = Array.new(size){|i| i = (2*i + 1)**2}
puts "The sum is #{add_diagonals(unspiral, r_corners)}"

