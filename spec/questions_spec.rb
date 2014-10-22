require './lib/questions.rb'

describe "questions" do

	it 'Question 1: can find the sum of all the multiples of 3 or 5 below a sepecific number' do
		expect(sum_of_multiples(10)).to eq 23
		expect(sum_of_multiples(1000)).to eq 233168
	end

	it 'can list any number of terms of a Fibonacci sequence' do
		Fibonacci_terms = [1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
		expect(fibonacci_list(10)).to eq Fibonacci_terms
	end

	it 'can sum any number of terms of a Fibonacci sequence' do
		expect(fibonacci_total(10)).to eq 231
	end

	it 'can sum any number of terms of a Fibonacci sequence up to a number' do
		expect(fibonacci_total_up_to_number(10)).to eq 19
	end

	it 'Question 2: can find the sum of the even-valued terms in Fibonacci sequence whose values do not exceed a specifc number' do
		expect(fibonacci_even_total_up_to_number(4000000)).to eq 4613732
	end

	it 'Question 3: can find the largest prime factor of a number' do
		expect(largest_prime_factor(13195)).to eq 29
		expect(largest_prime_factor(600851475143)).to eq 6857
	end

	it 'Question 4: find the largest palindrome made from the product of two n-digit numbers' do
		expect(find_palindrome(2)).to eq 9009
		expect(find_palindrome(3)).to eq 906609
	end

	it 'Question 5: find the smallest positive number that is evenly divisible by all numbers in a range' do
		expect(smallest_multiple(10)).to eq 2520
		expect(smallest_multiple(20)).to eq 232792560
	end

	it 'find the sum of squares up to a number' do
		expect(sum_of_squares_up_to_a_number(10)).to eq 385
		expect(sum_of_squares_up_to_a_number(100)).to eq 338350
	end

	it 'find the square of sums up to a number' do
		expect(square_of_sums_up_to_a_number(10)).to eq 3025
		expect(square_of_sums_up_to_a_number(100)).to eq 25502500
	end

	it 'Question 6: find the difference between the square of sums and sum of the squares up to a number' do
		expect(difference_between_square_of_sums_and_sum_of_squares_up_to_a_number(10)).to eq 2640
		expect(difference_between_square_of_sums_and_sum_of_squares_up_to_a_number(100)).to eq 25164150
	end

	it 'find if a number is prime' do
		expect(is_prime?(5)).to eq true
		expect(is_prime?(6)).to eq false
	end

	it 'find the next prime' do
		expect(find_next_prime(5)).to eq 7
		expect(find_next_prime(7)).to eq 11
	end

	it 'Question 7: find prime in the list of primes' do
		expect(find_prime(6)).to eq 13
		expect(find_prime(10001)).to eq 104743
	end

	it 'Question 8: find the largest product of adjacent digits in a long number' do
		expect(find_largest_adjacent(long_number, 4)).to eq 5832
		expect(find_largest_adjacent(long_number, 13)).to eq 23514624000
	end

	it 'find Pythagorean triplets up to a number' do
		expect(find_pythagorean_triplets(10)).to eq [[3, 4, 5]]
	end

	it 'Question 9: find the product of terms of the Pythagorean triplet with a sum of terms equal to a number' do
		expect(find_product_of_pythagorean_triplet(1000)).to eq 31875000
	end

	it 'find list of primes up to a number' do
		expect(list_of_primes(10)).to eq [2, 3, 5, 7]
	end

	it 'list primes up to a number' do
		expect(primes(10)).to eq [2, 3, 5, 7]
	end

	it 'Question 10: find the sum of primes up to a number' do
		expect(sum_of_primes(10)).to eq 17
		expect(sum_of_primes(2000000)).to eq 142913828922
	end

end






