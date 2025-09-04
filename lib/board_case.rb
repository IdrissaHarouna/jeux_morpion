# Classe BoardCase : représente une case du plateau
# Elle a :
# - un identifiant (ex: "A1")
# - une valeur (vide " ", ou "X", ou "O")

class BoardCase
  attr_accessor :id, :value

  def initialize(id)
    @id = id       
    @value = " "   
  end

  
  def empty?
    value == " "
  end

  
  def to_s
    value
  end
end
