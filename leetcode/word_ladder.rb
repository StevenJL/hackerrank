require "pry"

#  Given two words (beginWord and endWord), and a dictionary's word list,
#  find the length of shortest transformation sequence from beginWord to
#  endWord, such that:
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
  word_ladder = WordLadder.new(word_list)
  word_ladder.shortest_path(begin_word, end_word)
  pre_answer = word_ladder.distances_from_origin[end_word]
  return 0 unless pre_answer
  pre_answer + 1
end

class WordLadder
  attr_reader :distances_from_origin, :queue, :word_list

  def initialize(word_list)
    @word_list = word_list
    @queue = []
    @distances_from_origin = {}
  end

  def shortest_path(start_word, end_word)
    neighbors = neighbors(start_word)
    neighbors.each do |word|
      push_to_queue(word, 1)
    end

    while !@queue.empty?
      word = @queue.shift
      process_word(word)
    end
  end

  def push_to_queue(word, dist)
    unless @queue.include?(word)
      @queue << word
    end
    unless @distances_from_origin[word]
      @distances_from_origin[word] = dist
    end
    if @distances_from_origin[word] && @distances_from_origin[word] > dist
      @distances_from_origin[word] = dist
    end
  end

  def process_word(word)
    dist_from_origin = @distances_from_origin[word]
    return unless dist_from_origin
    neighbors = neighbors(word)
    return if neighbors.empty?
    neighbors.each do |nword|
      push_to_queue(nword, dist_from_origin + 1)
    end
  end

  def neighbors(word)
    @word_list.select { |cand_word| off_by_one_letter?(word, cand_word) && @distances_from_origin[cand_word].nil? }
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
end


#start_word = "hit"
#end_word = "cog"
#word_list = ["hot","dot","dog","lot","log"]

#  start_word = "hot"
#  end_word = "dog"
#  word_list = ["hot","dog","dot"]


#  start_word = "kiss"
#
#  end_word = "tusk"
#
#  word_list = ["miss","dusk","kiss","musk","tusk","diss","disk","sang","ties","muss"]

start_word = "hit"
end_word = "cog"
word_list = ["hot","dot","dog","lot","log","cog"]

puts ladder_length(start_word, end_word, word_list)


