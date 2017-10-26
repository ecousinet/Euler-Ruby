# Problem 1
#
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we
# get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

def isDivisible(x, y)
	x % y == 0
end

sum = 0

(1..1000).each do |n|
	if isDivisible(n, 3) || isDivisible(n, 5)
		sum += n
	end
end

puts sum
