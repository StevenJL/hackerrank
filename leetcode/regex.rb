#  '.' Matches any single character.
#    '*' Matches zero or more of the preceding element.
#
#    The matching should cover the entire input string (not partial).
#
#    The function prototype should be:
#    bool isMatch(const char *s, const char *p)
#
#  Some examples:
#  isMatch("aa","a") → false
#  isMatch("aa","aa") → true
#  isMatch("aaa","aa") → false
#  isMatch("aa", "a*") → true
#  isMatch("aa", ".*") → true
#  isMatch("ab", ".*") → true
#  isMatch("aab", "c*a*b") → true
#  match?("zerdabc", ".*abc") -> true

def match?(str, regex)
  str_len = str.length
  regex_len = regex.length
  str_indx = 0
  regex_indx = 0
  while(str_indx < str_len || regex_indx < regex_len)
    # return false if one reaches the end while the other still has chars

    if regex[regex_indx..regex_indx+1] == '.*'
      # if there is another regex char after this
      # then run through the string until that is found

    elsif regex[regex_indx + 1] == '*'
      # case 1: does not match, move str_indx and move regex_indx
      # case 2: matches, then move str_indx til it stops matching
    elsif regex[regex_indx] == '.'

    elsif str[str_indx] == regex[regex_indx]

    elsif str[str_indx] != regex[regex_indx]

    end
  end
end


