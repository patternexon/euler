#!/usr/bin/ruby -w

def even(number)
	return number/2
end

def odd(number)
	return (3*number+1)
end


puts "Started at #{Time.now}"
max = 0
steps = Hash.new
n = 1000000
(2..n).each do |i|
	step, number = 0, i		
	until i == 1		
		if i % 2 == 0
			i = even(i)
			step = step + 1
			if steps.key?(i)
				step = step + steps[i]
				break
			end
		else
			i = odd(i)
			step = step + 1
		end
	 end
	steps[number] = step
end

puts steps.index(steps.values.max)
puts "Finished at #{Time.now}"
