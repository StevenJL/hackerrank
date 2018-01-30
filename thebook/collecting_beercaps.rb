# Suppose a grid of size NxM, each cell in the grid contains a specific
# number of beer caps. Starting from [0,0] in the grid,
# your goal is to reach the right-most, bottom-most cell by collecting
# the most beer caps. However, you can only move right or down.
#
# Write a method that finds the path with the maximum number of beer caps

@grid =  [ [ 131, 673, 234, 103,  18 ],
          [ 201,  96, 342, 965, 150 ],
          [ 630, 803, 746, 422, 111 ],
          [ 537, 699, 497, 121, 956 ],
          [ 805, 732, 524,  37, 331 ]]

@all_paths = []

# generate all combinations of [d d d d, r, r, r, r]
def generate_all_paths(number_of_downs, number_of_rights)
  if number_of_downs == 0 && number_of_rights == 0
    nil
  end
  if number_of_downs == 0
    [r]
  @all_paths << [d] +
end

def traverse_and_collect(steps_array)
  sum = 131
  row = 0
  col = 0
  while !steps_array.empty?
    case steps_array.shift
    when :down
      row += 1
    when :right
      col += 1
    end
    sum += @grid[row][col]
  end
  sum
end

puts traverse_and_collect([:down, :right])

