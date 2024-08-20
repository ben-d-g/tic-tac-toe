# frozen_string_literal: true

require_relative('cell')

class Grid
  def initialize
    @grid = Array.new(3) { Array.new(3) { Cell.new } }
  end

  def get_cell_value(row, col)
    @grid[row][col].get_value
  end

  def set_cell_value(row, col, value)
    @grid[row][col].set_value(value)
  end

  def get_grid_string
    grid_string = ''
    @grid.each do |row|
      row_string = ''
      row.each do |cell|
        row_string += cell.get_value
      end
      grid_string += "#{row_string}\n"
    end
    grid_string
  end

  def full
    grid_flat = @grid.flatten
    grid_flat.each do |cell|
      return false if cell.get_value == '-'
    end
    true
  end

  def winner
    # check rows and cols
    0.upto(2) do |i|
      # rows first
      if (get_cell_value(i, 0) == get_cell_value(i, 1)) &&
         (get_cell_value(i, 0) == get_cell_value(i, 2)) &&
          (get_cell_value(i, 0) != '-')
        return get_cell_value(i, 0)
      end
      if (get_cell_value(0, i) == get_cell_value(1, i)) &&
         (get_cell_value(0, i) == get_cell_value(2, i)) &&
          (get_cell_value(0, i) != '-')
        return get_cell_value(0, i)
      end
    end

    # check diagonals
    if (get_cell_value(0, 0) == get_cell_value(1, 1)) &&
       (get_cell_value(0, 0) == get_cell_value(2, 2)) &&
        (get_cell_value(0, 0) != '-')
      return get_cell_value(0, 0)
    end
    if (get_cell_value(2, 0) == get_cell_value(1, 1)) &&
       (get_cell_value(2, 0) == get_cell_value(0, 2)) &&
        (get_cell_value(0, 2) != '-')
      return get_cell_value(0, 2)
    end

    # its a draw
    return 'DRAW' if full

    # no winner found
    nil
  end
end
