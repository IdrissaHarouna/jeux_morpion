require_relative "game"

# Classe Application : lance le jeu et gère les parties successives
class Application
  def perform
    puts "Bienvenue au Morpion !"
    print "Nom du Joueur 1 : "
    p1 = gets.chomp.strip
    print "Nom du Joueur 2 : "
    p2 = gets.chomp.strip

    game = Game.new(p1.empty? ? "Joueur1" : p1, p2.empty? ? "Joueur2" : p2)

    loop do
      while game.status == "on going"
        game.turn
      end

      game.game_end

      print "Voulez-vous rejouer ? (O/N) : "
      answer = gets.chomp.strip.upcase
      break unless answer.start_with?("O")
      game.new_round
    end

    puts "Merci d'avoir joué ! À bientôt."
  end
end
