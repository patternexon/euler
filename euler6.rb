#!/usr/bin/ruby -w

def sumofsquares(n)
   n*(n+1)*(2*n+1)/6 
end

def squareofsums(n)
   ((n*(n+1))/2)**2
end


number = 100;
print "The difference for first #{number} numbers is ", squareofsums(number) - sumofsquares(number)
