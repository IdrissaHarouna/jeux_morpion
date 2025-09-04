# Classe Player : représente un joueur
# Possède un nom et un symbole (X ou O)
class Player
  attr_reader :name, :symbol

  def initialize(name, symbol)
    @name = name
    @symbol = symbol.upcase
  end
end
