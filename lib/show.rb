# Classe Show : gère l'affichage du plateau
class Show
  def show_board(board)
    puts "    1   2   3"
    puts "  -------------"
    puts "A | #{board.cases['A1']} | #{board.cases['A2']} | #{board.cases['A3']} |"
    puts "  -------------"
    puts "B | #{board.cases['B1']} | #{board.cases['B2']} | #{board.cases['B3']} |"
    puts "  -------------"
    puts "C | #{board.cases['C1']} | #{board.cases['C2']} | #{board.cases['C3']} |"
    puts "  -------------"
    puts
  end
end
