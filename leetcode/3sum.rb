require "pry"
# Given an array S of n integers, are there elements a, b, c in S such that a + b + c = 0?
# Find all unique triplets in the array which gives the sum of zero.

#  For example, given array S = [-1, 0, 1, 2, -1, -4],
#
#  A solution set is:
#  [
#    [-1, 0, 1],
#    [-1, -1, 2]
#  ]

def three_sum(array)
  len = array.length
  array.sort!
  solutions = []
  array.each_with_index do |num, indx|
    target_sum = 0 - num
    low = indx + 1
    high = len - 1
    while(low < high)
      current_sum = array[low] + array[high]
      if current_sum  == target_sum
        solutions << [num, array[low], array[high]]
        high = high - 1
        low = low + 1
      elsif current_sum < target_sum
        low = low + 1
      else
        high = high - 1
      end
    end
  end
  solutions.uniq
end

# array = [-1, 0, 1, 2, -1, -4]
array = [3,0,-2,-1,1,2]
puts three_sum(array)


