# Given a sequence of n integers a1, a2, ..., an, a 132 pattern is a subsequence ai, aj, ak such that i < j < k and ai < ak < aj.
# Design an algorithm that takes a list of n numbers as input and checks whether there is a 132 pattern in the list.

def find132pattern(nums)
  len = nums.length
  indx = 0
  while(indx < len - 2)
    one = nums[indx]
    indx3 = indx + 1
    while(indx3 < len)
      three = nums[indx3]
      if one < three
        potential_twos = nums[(indx+1)...indx3]
        if potential_twos.any? {|num| num > three}
          return true
        end
      end
      indx3 = indx3 + 1
    end
    indx = indx + 1
  end
  false
end

puts find132pattern([3,5,0,3,4])
