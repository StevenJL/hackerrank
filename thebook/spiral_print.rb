grid = [
  [1, 2, 3, 4],
  [5, 6, 7, 8],
  [9, 10, 11, 12],
  [13, 14, 15, 16],
]

# would print as 1 2 3 4 8 12 16 15 14 13 9 5 6 7 11 10

def next_direction(direction)
  case direction
  when :right
    :down
  when :down
    :left
  when :left
    :up
  when :up
    :right
  end
end

@visited = [[0,0]]

# [row_indx, col_indx]
@current_position = [0, 0]

@current_direction = :right

def next_position(current_position)
  case @current_diredction
  when :right
    candidate_position = [@current_position[0]+ 1, @current_position[1]]
  when :down
    candidate_position = [@current_position[0], @current_position[1] + 1]
  when :left
    candidate_position = [@current_position[0], @current_position[1] + 1]
  end
end

