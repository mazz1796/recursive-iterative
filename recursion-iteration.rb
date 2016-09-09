# Place your solutions here
require 'benchmark'

def fibonacci_iterative(n)
	array = [0,1]
  until (array.length - 1) >= n
    array << (array[-1] + array[-2])
  end
  array[n]
end

def fibonacci_recursive(n)
	return 0 if n == 0
  return 1 if n == 1
  fibonacci_recursive(n - 1) + fibonacci_recursive(n - 2)
end

puts Benchmark.measure {
	1000.times do 
		fibonacci_recursive(12)
	end 
}


puts Benchmark.measure {
	1000.times do 
		fibonacci_iterative(12)
	end 
}
# puts Benchmark.measure {fibonacci_iterative(12)}