require_relative("cell")

class Grid
  def initialize()
    @grid = Array.new(3){ Array.new(3){ Cell.new() } }
  end

  def get_cell_value(row, col)
    return @grid[row][col].get_value()
  end

  def set_cell_value(row, col, value)
    return @grid[row][col].set_value(value)
  end

  def get_grid_string()
    grid_string = ""
    @grid.each do |row|
      row_string = ""
      row.each do |cell|
        row_string += cell.get_value()
      end
      grid_string += row_string + "\n"
    end
    return grid_string
  end
end