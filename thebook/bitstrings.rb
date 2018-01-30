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

