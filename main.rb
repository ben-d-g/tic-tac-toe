require_relative("lib/cell")
require_relative("lib/grid")
require_relative("lib/player")
require_relative("lib/game")

game = Game.new()
game.print_grid()

players = game.get_players()

game.make_move(players[:X], 0, 0)

game.print_grid()

game.choose_move()