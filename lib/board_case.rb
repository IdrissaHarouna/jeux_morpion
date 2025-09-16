# Classe BoardCase : représente une case du plateau
# Elle a :
# - un identifiant (ex: "A1")
# - une valeur (vide " ", ou "X", ou "O")

class BoardCase
  attr_accessor :id, :value

  def initialize(id)
    @id = id       # Identifiant de la case
    @value = " "   # Valeur par défaut vide
  end

  # Vérifie si la case est libre
  def empty?
    value == " "
  end

  # Affiche la valeur de la case
  def to_s
    value
  end
end
