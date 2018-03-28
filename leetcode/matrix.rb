require "pry"

# Given a matrix consists of 0 and 1, find the distance of the nearest 0 for each cell.
# The distance between two adjacent cells is 1.

matrix = [
  [0,0,0],
  [0,1,0],
  [1,1,1]
]

class DistanceToZero
  attr_reader :zeros

  def initialize(matrix)
    @input_matrix = matrix
    @zeros = []
    generate_zeros
  end

  def generate_matrix
    output = []
    @input_matrix.each_with_index do |row, row_indx|
      new_row = []
      row.each_with_index do |num, col_indx|
        if num == 0
          new_row << 0
        else
          new_row << distance_to_closest_zero(row_indx, col_indx)
        end
      end
      output << new_row
    end
    output
  end

  private

  def distance_to_closest_zero(inpt_row_indx, inpt_col_indx)
    best_distance_so_far = 10_000
    @zeros.each do |zero|
      distance = distance_calc([inpt_row_indx, inpt_col_indx], zero)
      if inpt_row_indx == 2 && inpt_col_indx == 1
      end
      if distance < best_distance_so_far
        best_distance_so_far = distance
      end
    end
    best_distance_so_far
  end

  def distance_calc(coord1, coord2)
    (coord1[0] - coord2[0]).abs + (coord1[1] - coord2[1]).abs
  rescue
  end

  def generate_zeros
    @input_matrix.each_with_index do |row, row_indx|
      row.each_with_index  do |num, col_indx|
        if num == 0
          @zeros << [row_indx, col_indx]
        end
      end
    end
  end
end

distance_to_zero = DistanceToZero.new(matrix)
puts distance_to_zero.generate_matrix
