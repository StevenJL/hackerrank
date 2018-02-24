# given an array of words find what is and how long is the length of the
# longest common substring between two words in the array

def largest_common_sub(str1, str2)
  answer = ""
  start_index = 0
  while start_index < str1.length
    end_index = start_index
    while end_index < str1.length
      str1_substr = str1[start_index..end_index]
      if str2.include?(str1_substr) && (str1_substr.length > answer.length)
        answer = str1_substr
      end
      end_index = end_index + 1
    end
    start_index = start_index + 1
  end
  answer
end

word_array = ["apple", "lappel", "crapptux", "apcalculus"]

largest_substr_so_far = ""
word_array.each_with_index do |str1, index1|
  word_array.each_with_index do |str2, index2|
    next if index1 == index2
    lcs = largest_common_sub(str1, str2)
    if lcs.length > largest_substr_so_far.length
      largest_substr_so_far = lcs
    end
  end
end

puts largest_substr_so_far

