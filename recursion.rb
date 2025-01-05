def fibs(num)
  fib_sequence = [0, 1] 

  (2..num).each do |i|
    fib_sequence << fib_sequence[i - 1] + fib_sequence[i - 2]
  end

  fib_sequence[0..num - 1] 
end

# Example usage
p fibs(8) # Output: [0, 1, 1, 2, 3, 5, 8, 13]