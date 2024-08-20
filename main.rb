require_relative("lib/cell")
require_relative("lib/grid")

grid = Grid.new()

print(grid.get_grid_string())

grid.set_cell_value(0, 1, "X")

print(grid.get_grid_string())

grid.set_cell_value(0, 2, "O")

print(grid.get_grid_string())

print(grid.get_cell_value(2,2))