# Suppose a grid of size NxM, each cell in the grid contains a specific
# number of beer caps. Starting from [0,0] in the grid,
# your goal is to reach the right-most, bottom-most cell by collecting
# the most beer caps. However, you can only move right or down.
#
# Write a method that finds the path with the maximum number of beer caps


@grid =  [
  [ 131, 673, 234, 103,  18 ],
  [ 201,  96, 342, 965, 150 ],
  [ 630, 803, 746, 422, 111 ],
  [ 537, 699, 497, 121, 956 ],
  [ 805, 732, 524,  37, 331 ]
]

@height = @grid.length
@width = @grid.first.length

@sum_grid = [
  [],
  [],
  [],
  [],
  [],
]

def collect(starting_point)
  row_indx = starting_point[0]
  col_indx = starting_point[1]

  @sum_grid[row_indx][col_indx] = @grid[row_indx][col_indx]
  while row_indx < @height
  end

end
