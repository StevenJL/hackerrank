# We define the pivot index as the index where the sum of the
# elements on its left is equal to the sum of the elements on its right.
# Write a method that finds the pivot index of an array, or returns -1
# if there isn't one.


class Array
  def sum
    self.inject(0) { |result, val| result = result + val}
  end
end

pivot_array = [10, 5, 4, 2, 3, 5, 5]
pivot_array2 = [5, 5, 5, 5, 5, 5, 2, 1, 32]
non_pivot_array = [1, 3, 4, 5, 3, 1]

# Naive implementation
def pivot_finder(array)
  indx = 1
  while indx < array.length - 1
    left_sum = array[0..(indx-1)].sum
    right_sum = array[(indx+1)..-1].sum
    if left_sum == right_sum
      return indx
    end
    indx += 1
  end
  -1
end


puts pivot_finder(pivot_array)
puts pivot_finder(pivot_array2)
puts pivot_finder(non_pivot_array)


