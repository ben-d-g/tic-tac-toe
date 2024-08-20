# frozen_string_literal: true

require_relative('lib/cell')
require_relative('lib/grid')
require_relative('lib/player')
require_relative('lib/game')

game = Game.new
game.play
