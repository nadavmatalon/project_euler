
def sum_of_multiples (number)
	(1...number).inject(0) { |t, n| (n % 3 == 0) || (n % 5 == 0 ) ? t + n : t }
end

def fibonacci_list (number_of_terms)
	(1..number_of_terms).inject([1]) { |t, n| n > 1 ? t << t.last + t[-2] : t << 1 }.drop(1)
end

def fibonacci_list_up_to_number (number)
	list, limit, first, second = [], 0, 0, 1
	while limit < number
		first + second < number ? limit = first + second : break
		first, second = second, limit
		list << limit
	end
	list
end

def fibonacci_total (number_of_terms)
	fibonacci_list(number_of_terms).inject{ |t, n| t + n }
end

def fibonacci_total_up_to_number (number)
	fibonacci_list_up_to_number(number).reduce(0, :+)
end

def fibonacci_even_total_up_to_number (number)
	fibonacci_list_up_to_number(number).select { |n| n.even? }.reduce(0, :+)
end

def find_prime_factor (number)
	prime_factors, i = [], 3
	while i < number do
		if (number % i == 0) 
			prime_factors << i unless not_prime(i)
			number = divide(number, prime_factors.last)
			puts i
		end
		i +=1
	end
	prime_factors
end

def largest_prime_factor (number)
	current_prime_factor = 3
	while (number >= current_prime_factor) do
  		if (number % current_prime_factor == 0)
    		largest_prime_factor = current_prime_factor
    		number /= current_prime_factor
  		else
    		current_prime_factor += 2
  		end
  	end
  	largest_prime_factor
end

def is_palindrome (number)
	number.to_s == number.to_s.reverse
end

def find_palindrome (number_of_digits)
	largest_palindrome = 0
	for i in (10**(number_of_digits)-1).downto(10**(number_of_digits -1))
		for j in (10**(number_of_digits)-1).downto(10**(number_of_digits -1))
			if is_palindrome(i * j) && (i * j > largest_palindrome)
				largest_palindrome = (i * j) 
				first_number = i
				second_number = j
			end
			break if largest_palindrome > j * 999 			
		end
	end
	# puts first_number
	# puts second_number
	largest_palindrome
end

def find_prime_factors (number)
	prime_factors, current_prime_factor = [], 2
	while number >= current_prime_factor
  		if number % current_prime_factor == 0
  			prime_factors << current_prime_factor
    		number /= current_prime_factor
  		else
    		current_prime_factor += 1
  		end
  	end
  	prime_factors.uniq
end

def smallest_multiple (upper_limit)
	(1..upper_limit).to_a.inject(:lcm)
end

def sum_of_squares_up_to_a_number (number)
	(1..number).inject(0){ |t, n| t + n * n }
end

def square_of_sums_up_to_a_number (number)
	(1..number).inject(0) {|t, n| t + n }**2
end

def difference_between_square_of_sums_and_sum_of_squares_up_to_a_number number
	square_of_sums_up_to_a_number(number) - sum_of_squares_up_to_a_number(number)
end

# def is_prime (number)
# 	result = true
# 	for i in 2...number do
# 		if (number % i == 0)
# 			result = false			
# 			break
# 		end  		
# 	end
# 	result
# end

def is_prime? (number)
    return false if number < 1
    2.upto(Math.sqrt(number)) do |x|
        return false if number % x == 0
    end 
    true
end 

def find_next_prime (current_prime)
	return false unless is_prime?(current_prime)
	current_prime == 2 ? next_prime = 3 : next_prime = current_prime + 2
	while !is_prime?(next_prime)
		next_prime += 2
	end
	next_prime
end

def find_prime (number_of_terms)
	return false unless number_of_terms > 0
	return 2 if number_of_terms == 1
	current_prime = 1
	for i in 2..number_of_terms 
		next_prime = find_next_prime current_prime
		current_prime = next_prime
	end
	next_prime
end

def find_largest_adjacent (long_number, digits)
	largest_product = 0
	for i in 0..(long_number.chars.count - digits)
		current_slice = long_number.slice(i...i+digits)
		current_slice_product = current_slice.chars.map {|x| x.to_i }.inject(1){|t, n| t*n }
		largest_product = current_slice_product if current_slice_product > largest_product
	end	
	largest_product
end

def long_number
	"7316717653133062491922511967442657474235534919493496983520312774506326239578318016984801869478851843858615607891129494954595017379583319528532088055111254069874715852386305071569329096329522744304355766896648950445244523161731856403098711121722383113622298934233803081353362766142828064444866452387493035890729629049156044077239071381051585930796086670172427121883998797908792274921901699720888093776657273330010533678812202354218097512545405947522435258490771167055601360483958644670632441572215539753697817977846174064955149290862569321978468622482839722413756570560574902614079729686524145351004748216637048440319989000889524345065854122758866688116427171479924442928230863465674813919123162824586178664583591245665294765456828489128831426076900422421902267105562632111110937054421750694165896040807198403850962455444362981230987879927244284909188845801561660979191338754992005240636899125607176060588611646710940507754100225698315520005593572972571636269561882670428252483600823257530420752963450"
end

def find_pythagorean_triplets (limit)
	pythagorean_tripletes = []
	for a in 1...limit
		for b in a...limit
			for c in b...limit
				pythagorean_tripletes << [a, b, c] if a**2 + b**2 == c**2
			end
		end
	end
	pythagorean_tripletes
end

def find_product_of_pythagorean_triplet (number)
	for a in 1...number/2
	  	for b in a...number/2
			for c in b...number/2
	      		return a*b*c if a**2 + b**2 == c**2 && a+b+c == 1000
	  		end
	  	end
	end
end

def list_of_primes (limit)
	list_of_primes, current_prime = [], 2
	while current_prime < limit
		list_of_primes << current_prime
		current_prime = find_next_prime(current_prime)
	end
	list_of_primes
end

def sum_of_primes (limit)
	primes(limit).inject(0) {|t, n| t + n }
end

def primes (number)
  list_of_primes = (0..number).to_a
  list_of_primes[0] = list_of_primes[1] = nil
  list_of_primes.each do |prime|
    next unless prime
    break if prime * prime > number
    (prime * prime).step(number, prime) { |x| list_of_primes[x] = nil }
  end
  list_of_primes.compact
end

