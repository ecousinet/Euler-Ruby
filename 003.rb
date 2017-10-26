# Problem 3
#
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

require "./helper.rb"

n = 600851475143
i = (n**0.5).round + 1

puts n

while i >= 2 do
	if isPrime(i) && n % i == 0
		break
	end
	i -= 1
end

if i == 2
	puts 'No prime factor found'
else
	puts i
end
