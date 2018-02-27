# Given an input string and a dictionary of words, find out if the input string can be segmented
# into a space-separated sequence of dictionary words. You need to output the minimum number of words.
# For example, input: "aaaisaname" dict: ("a", "aaa", "is", "name")
# output: "aaa is a name" Wrong output: "a a a is a name"

require "set"
require "pry"

dictionary = Set.new
dictionary.add("dog")
dictionary.add("is")
dictionary.add("good")

class SentenceParser
  def parse(sentence, dictionary)
    @parsed_sentence = []
    @dictionary = dictionary
    parse_aux(sentence)
    if @parsed_sentence.join.length == sentence.length
      @parsed_sentence
    else
      false
    end
  end

  private

  def parse_aux(sentence)
    return if sentence.empty?
    idx_start = 0
    while(idx_start < sentence.length)
      idx_end = idx_start
      while(idx_end < sentence.length)
        fragment = sentence[idx_start..idx_end]
        rest = sentence[(idx_end+1)..-1]
        if @dictionary.include?(fragment)
          @parsed_sentence << fragment
          return parse_aux(rest)
        end
        idx_end += 1
      end
      idx_start += 1
    end
  end
end

SentenceParser.new.parse("dogisnotgood", dictionary)
SentenceParser.new.parse("dogsadsf", dictionary)
