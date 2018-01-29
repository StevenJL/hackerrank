def deep_clone(obj)
  obj = Marshal.load(Marshal.dump(obj))
end

def power_set(set)
  output = [[]]
  set.each do |element|
    output = output + inject_into_each(deep_clone(output), element)
  end
  output
end

# Takes a set of sets and element, and returns a set
# of sets such that new element is in each of the sets
def inject_into_each(sets, element)
  sets.each do |set|
    set << element
  end
  sets
end

results = power_set([1,2,3,4])
puts results.inspect
