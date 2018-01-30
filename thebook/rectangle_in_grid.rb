# Find the area of the rectangle defined by the 1s in this grid
grid = [
  [0, 0, 1, 0, 0, 0, 1, 0],
  [0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 1, 0, 0, 0, 1, 0],
]

# Get coordinates of any of the corners by dimension
# Then just min-max them to get distance
@vertical_coords = []
@horizontal_coords = []

def get_coordinates(grid)
  grid.each_with_index do |row, row_index|
    row.each_with_index do |element, col_index|
      if element == 1
        @vertical_coords << row_index
        @horizontal_coords << col_index
      end
    end
  end
end

def compute_area
  (@vertical_coords.max - @vertical_coords.min) * (@horizontal_coords.max - @horizontal_coords.min)
end

get_coordinates(grid)
answer = compute_area
puts answer
