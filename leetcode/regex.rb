#  '.' Matches any single character.
#    '*' Matches zero or more of the preceding element.
#
#    The matching should cover the entire input string (not partial).
#
#    The function prototype should be:
#    bool match?(const char *s, const char *p)
#
#  Some examples:

def match?(str, regex)
  if regex.nil? || regex.empty?
    return (str.nil? || str.empty?)
  end

  if !str.nil? && !str.empty? && [str[0], "."].include?(regex[0])
    first_matches = true
  else
    first_matches = false
  end

  if regex.length > 1 && regex[1] == "*"
    return match?(str, regex[2..-1]) || (first_matches && match?(str[1..-1], regex))
  else
    return first_matches && match?(str[1..-1], regex[1..-1])
  end
end

puts match?("aa","a") # false
puts match?("aa","aa") # true
puts match?("aaa","aa") # false
puts match?("aa", "a*") # true
puts match?("aa", ".*") # true
puts match?("ab", ".*") # true
puts match?("aab", "c*a*b") # true
puts match?("zerdabc", ".*abc") # true


