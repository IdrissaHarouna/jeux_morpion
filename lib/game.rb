require_relative "board"
require_relative "player"
require_relative "show"


class Game
  attr_accessor :board, :players, :current_player, :status

  def initialize(player1_name, player2_name)
    @players = [
      Player.new(player1_name, "X"),
      Player.new(player2_name, "O")
    ]
    @board = Board.new
    @current_player = @players[0]
    @status = "on going"
    @show = Show.new
  end

 
  def turn
    @show.show_board(@board)
    @board.play_turn(@current_player)
    winner = @board.victory?
    if winner
      if winner == "draw"
        @status = "draw"
      else
        @status = @current_player
      end
    else
      switch_player
    end
  end

 
  def switch_player
    @current_player = @players.find { |p| p != @current_player }
  end

 
  def new_round
    @board = Board.new
    @status = "on going"
    @current_player = @players[0]
  end

 
  def game_end
    @show.show_board(@board)
    case @status
    when "draw"
      puts "Match nul !"
    else
      puts "Bravo #{@status.name} ! Tu as gagné avec '#{@status.symbol}' !"
    end
  end
end
