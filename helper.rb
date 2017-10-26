# In order to keep the project DRY
# Put shared function in this file

def isDivisible(n, x)
	n % x == 0
end

def isPrime(n)
	if n == 1
		return false
	elsif n == 2
		true
	elsif n % 2 == 0
		return false
	end
	# Check until square root of n because primeFactor(n) can't be > sqrt(n)
	(3..((n**0.5).round + 1)).each do |i|
		if i != n && n % i == 0
			return false
		end
	end
	return true
end
