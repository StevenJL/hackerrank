# Think of DICT as a map from numbers to letters. Note that
# sometimes multiple numbers can map to a single letter.
# Write a function `get_words` that takes a string of numbers
# and generates all the letters that can be "combinated" by
# those numbers.

DICT = {
    '1' => ['a', 'b'],
    '2' => ['c', 'd'],
    '12' => ['e', 'f'],
}

# get_words('1') => ['a', 'b']
# get_words('12') => ['ac', 'ad', 'bc', 'bd', 'e', 'f']
# get_words('122') => ['acc', 'acd, 'adc', 'add', 'bcc', 'bcd', 'bdc', 'bdd', 'ec', 'ed', 'fc', 'fd'[]

def get_words(num_str)
  start_indx = 0
  end_indx = 0
  num_str[start_indx..end_indx]

end


























































def get_words(num_str)
  num_str.split("")
end

def tack_on_to_each(str_array, char)
  str_array.map { |str| str + char }
end

def combinates(str_array1, str_array2)
  output = []
  str_array2.each do |str|
    output += tack_on_to_each(str_array1, str)
  end
  output
end

def get_words(nums)
  partials = get_words_tree_approach(nums)
  partials.map do |partial|
    partial.reduce do |memo, arr|
      combinates(memo, arr)
    end
  end.flatten
end

def get_words_tree_approach(nums)
  arrays_of_partial_computed = []
  start_indx = 0
  end_indx = 0
  while end_indx < nums.length
    key = nums[start_indx..end_indx]
    rest = nums[(end_indx+1)..-1]
    if(letters = DICT[key])
      if rest.length > 0
        get_words_tree_approach(rest).each do |approach|
          arrays_of_partial_computed << [letters] + approach
        end
      else
        arrays_of_partial_computed << [letters]
      end
    end
    end_indx += 1
  end
  arrays_of_partial_computed
end


puts get_words('122').inspect


[ [['a', 'b'], ['c', 'd'], ['c', 'd']], [['e', 'f'], ['c', 'd']] ]
# '122' => ( ['a', 'b'], '22' ),([a b] [c d ] [c d] ) ( ['e, f'], '2' )


# puts combinates(['a','b'],['c','d'])


# puts tack_on_to_each(['a', 'b'], 'c')

# puts get_words('1').inspect
# puts get_words('12').inspect
# puts get_words('122').inspect

