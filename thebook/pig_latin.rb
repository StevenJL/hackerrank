# dog => ogday
# shoe => oeshay
# egg => eggay
# yarn => arnyay

VOWELS = ["a", "e", "i", "o", "u"]

def pig_latinize(word)
  prefix = []
  suffix = []
  encountered_first_vowel = false
  letter_array = word.split("")
  letter_array.each do |letter|
    if VOWELS.include?(letter)
      encountered_first_vowel = true
    end
    if encountered_first_vowel
      prefix << letter
    else
      suffix << letter
    end
  end
  prefix.join("") + suffix.join("") + "ay"
end

puts pig_latinize("dog")
puts pig_latinize("shoe")
puts pig_latinize("egg")
