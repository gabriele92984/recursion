def merge_sort(array)
  return array if array.size <= 1

  mid = array.size / 2
  left_half = merge_sort(array[0...mid])
  right_half = merge_sort(array[mid...array.size])

  merge(left_half, right_half)
end

def merge(left, right)
  result = []
  left_index = 0
  right_index = 0

  while left_index < left.size && right_index < right.size
    if left[left_index] <= right[right_index]
      result << left[left_index]
      left_index += 1
    else
      result << right[right_index]
      right_index += 1
    end
  end

  result += left[left_index..] if left_index < left.size
  result += right[right_index..] if right_index < right.size

  result
end

# Example usage
array1 = [3, 2, 1, 13, 8, 5, 0, 1]
array2 = [105, 79, 100, 110]

puts "Sorted array1: #{merge_sort(array1)}" # Output: Sorted array1: [0, 1, 1, 2, 3, 5, 8, 13]
puts "Sorted array2: #{merge_sort(array2)}" # Output: Sorted array2: [79, 100, 105, 110]