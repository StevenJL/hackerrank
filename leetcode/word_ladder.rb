require "pry"

#  Given two words (beginWord and endWord), and a dictionary's word list, find the length of shortest transformation sequence from beginWord to endWord, such that:
#
#  Only one letter can be changed at a time.
#  Each transformed word must exist in the word list. Note that beginWord is not a transformed word.
#  For example,
#
#  Given:
#  beginWord = "hit"
#  endWord = "cog"
#  wordList = ["hot","dot","dog","lot","log","cog"]
#  As one shortest transformation is "hit" -> "hot" -> "dot" -> "dog" -> "cog",
#  return its length 5.
#
#  Note:
#  Return 0 if there is no such transformation sequence.
#  All words have the same length.
#  All words contain only lowercase alphabetic characters.
#  You may assume no duplicates in the word list.
#  You may assume beginWord and endWord are non-empty and are not the same.

def ladder_length(begin_word, end_word, word_list)
  shortest_path_aux(begin_word, end_word, word_list, 1)
end

DEAD_ENDS = []

def shortest_path_aux(start_word, end_word, word_list, steps_so_far)
  return 0 if DEAD_ENDS.include?(start_word)
  if start_word == end_word
    return steps_so_far
  end
  neighbors = word_list.select { |word| off_by_one_letter?(start_word, word) }
  return 0 if neighbors.empty?
  path_steps = neighbors.map do |neighbor|
    shortest_path_aux(neighbor, end_word, word_list - [start_word],  steps_so_far + 1)
  end

  result = path_steps.compact.reject {|path_step| path_step == 0 }.min || 0
  if result == 0
    DEAD_ENDS << start_word
  end
  result
end

# Assuming word1 and word2 have the same length
def off_by_one_letter?(word1, word2)
  return false if word1 == word2
  already_encoutered_diff_char = false
  length = word1.length
  indx = 0
  while(indx < length) do
    letter1 = word1[indx]
    letter2 = word2[indx]
    if letter1 == letter2
      indx = indx + 1
      next
    else
      if already_encoutered_diff_char
        return false
      else
        already_encoutered_diff_char = true
      end
    end

    indx = indx + 1
  end
  return true
end


#start_word = "hit"
#end_word = "cog"
#word_list = ["hot","dot","dog","lot","log"]

start_word = "hot"
end_word = "dog"
word_list = ["hot","dog","dot"]

puts ladder_length(start_word, end_word, word_list)






