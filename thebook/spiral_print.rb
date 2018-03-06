require "pry"

grid = [
  [1, 2, 3, 4],
  [5, 6, 7, 8],
  [9, 10, 11, 12],
  [13, 14, 15, 16],
]

# would print as 1 2 3 4 8 12 16 15 14 13 9 5 6 7 11 10

def spiral_print(grid)
  length = grid.first.count
  height = grid.count
  current_top_row = 0
  current_right_col = length - 1
  current_bottom_row = height - 1
  current_left_col = 0

  while current_top_row < current_bottom_row
    # print top row
    top_row_indx = current_top_row
    while top_row_indx <= current_right_col
      print grid[current_top_row][top_row_indx]," "
      top_row_indx = top_row_indx + 1
    end
    current_top_row = current_top_row + 1

    # print right col
    right_col_indx = current_top_row
    while right_col_indx <= current_bottom_row
      print grid[right_col_indx][current_right_col]," "
      right_col_indx = right_col_indx + 1
    end
    current_right_col = current_right_col - 1

    # print bottom row
    bot_row_indx = current_right_col
    while bot_row_indx >= current_left_col
      print grid[current_bottom_row][bot_row_indx]," "
      bot_row_indx = bot_row_indx - 1
    end
    current_bottom_row = current_bottom_row - 1

    # print left col
    left_col_indx = current_bottom_row
    while left_col_indx >= current_top_row
      print grid[left_col_indx][current_left_col]," "
      left_col_indx = left_col_indx - 1
    end
    current_left_col = current_left_col + 1
  end
end

spiral_print(grid)
