# Problem 5
#
# 2520 is the smallest number that can be divided by each of the numbers from 1
# to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the
# numbers from 1 to 20?

def isDivisibleByRange(n, min, max)
  max.downto(min) do |i|
    if !isDivisible(n, i)
      return false
    end
  end
  return true
end

def isDivisible(n, x)
	n % x == 0
end

i = 1

while !isDivisibleByRange(i, 1, 20) do
  i += 1
end
puts i
