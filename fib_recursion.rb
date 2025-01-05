# Fibonacci sequence using iteration
def fibs(num)
  fib_sequence = [0, 1] 

  (2..num).each do |i|
    fib_sequence << fib_sequence[i - 1] + fib_sequence[i - 2]
  end

  fib_sequence[0..num - 1] 
end

# Example usage
p fibs(8) # Output: [0, 1, 1, 2, 3, 5, 8, 13]

# Fibonacci sequence using recursion
def fibs_rec(n)
  return [0] if n == 1
  return [0, 1] if n == 2

  prev_fibs = fibs_rec(n - 1)
  prev_fibs << prev_fibs[-1] + prev_fibs[-2]
end

# Example usage
puts 'This was printed recursively'
p fibs_rec(8) # Output: [0, 1, 1, 2, 3, 5, 8, 13]