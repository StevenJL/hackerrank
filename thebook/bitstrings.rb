# Write a function that generates all bit strings of length 4

def append_1_to_each(array)
  return ["1"] if array.empty?
  array.map {|str| str + "1"}
end

def append_0_to_each(array)
  return ["0"] if array.empty?
  array.map {|str| str + "0"}
end

strings = []
4.times do
  strings = append_1_to_each(strings) + append_0_to_each(strings.dup)
end

# Write a function that generates all bit strings of length 10 with
# exactly 5 1's and 5 0's.

@bit_strings = ["11111"]

5.times do
  @bit_strings = @bit_strings.inject([]) do |acc, str|
    acc = acc + permute(str, "0")
  end
  @bit_strings.uniq!
end

def permute(string, char)
  output = [char + string]

  string.length.times do |indx|
    output << string[0..indx] + char + string[(indx+1)..-1]
  end
  output
end


