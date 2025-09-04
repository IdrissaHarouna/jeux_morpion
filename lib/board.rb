require_relative "board_case"


class Board
  attr_accessor :cases, :turn_count

  WIN_COMBINATIONS = [
    %w[A1 A2 A3],
    %w[B1 B2 B3],
    %w[C1 C2 C3],
    %w[A1 B1 C1],
    %w[A2 B2 C2],
    %w[A3 B3 C3],
    %w[A1 B2 C3],
    %w[A3 B2 C1]
  ].freeze

  POSITIONS = %w[A1 A2 A3 B1 B2 B3 C1 C2 C3].freeze

  def initialize
    
    @cases = {}
    POSITIONS.each { |id| @cases[id] = BoardCase.new(id) }
    @turn_count = 0
  end

  
  def play_turn(player)
    loop do
      print "#{player.name} (#{player.symbol}), choisis une case (ex: A1) : "
      input = gets.chomp.strip.upcase
      if POSITIONS.include?(input) && @cases[input].empty?
        @cases[input].value = player.symbol
        @turn_count += 1
        break
      else
        puts "Case invalide ou déjà prise. Réessaye."
      end
    end
  end

 
  def victory?
    WIN_COMBINATIONS.each do |combo|
      values = combo.map { |pos| @cases[pos].value }
      next if values.any? { |v| v == " " }
      return values[0] if values.uniq.size == 1
    end
    return "draw" if @turn_count >= 9
    nil
  end
end
