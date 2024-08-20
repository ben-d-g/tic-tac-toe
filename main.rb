require_relative("lib/cell")
require_relative("lib/grid")

grid = Grid.new()

print(grid.winner())

grid.set_cell_value(0, 0, "O")
grid.set_cell_value(0, 1, "X")
grid.set_cell_value(0, 2, "O")
grid.set_cell_value(1, 0, "X")
grid.set_cell_value(1, 1, "O")
grid.set_cell_value(2, 0, "X")
grid.set_cell_value(2, 0, "O")


print(grid.winner())