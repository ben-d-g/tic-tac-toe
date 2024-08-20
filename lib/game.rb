require_relative("player")
require_relative("grid")

class Game
  def initialize(player_1_name = "Player 1", player_2_name = "Player 2")
    puts("Enter name >>")
    player_1_name = gets.chomp
    player_1_name = "Player 1" if player_1_name == ""
    puts("Enter name >>")
    player_2_name = gets.chomp
    player_2_name = "Player 2" if player_2_name == ""
    @players = {X: Player.new("X", player_1_name), O: Player.new("O", player_2_name)}
    @grid = Grid.new()
  end

  def print_grid()
    puts(@grid.get_grid_string())
  end

  def make_move(player, row, col)
    if @grid.get_cell_value(row, col) == "-"
      @grid.set_cell_value(row, col, player.get_glyph())
      return true
    else
      return false
    end
  end

  def choose_move()

    def is_i?(string)
      return string.to_i.to_s == string
    end

    puts("Choose move row >>")
    row_input = gets.chomp
    puts("Choose move col >>")
    col_input = gets.chomp

    until is_i?(row_input) and is_i?(col_input) and row_input.to_i.between?(0,2) and col_input.to_i.between?(0,2) and (@grid.get_cell_value(row_input.to_i, col_input.to_i) == "-")
      puts("Invalid input")
      puts("Choose move row >>")
      row_input = gets.chomp
      puts("Choose move col >>")
      col_input = gets.chomp
    end

    return [row_input.to_i, col_input.to_i]
  end

  def play()
    turn = 0
    while @grid.winner == nil

      puts()

      print_grid()

      #decide who's turn it is
      if turn % 2 == 0
        current = @players[:X]
      else
        current = @players[:O]
      end

      puts("#{current.get_name} to play")

      #get player's move
      current_move = choose_move()

      #make move
      make_move(current, current_move[0], current_move[1])

      #increment turn
      turn += 1
    end

    if @grid.winner() == "DRAW"
      puts("It's a draw!")
    else
      puts("\n#{@players[@grid.winner().to_sym].get_name} wins!")
    end
  end

  def get_players()
    return @players
  end
end