require "pry-byebug"
require_relative("player")

class Game < Player
  def initialize(players, won)
    @players = players
    @won = false
  end

  def name_of_array
    playa =  @players.length
  end

  def rotate_players
    return @players.rotate
  end

  def won_is_true
    return "Game over "
  end

  def take_turn
    while @won != true
      current_turn = @players[0].four_roll
      puts "#{@players[0].name} is up."
      puts "Press enter to roll the dice..."
      gets.chomp
      if current_turn >= @players[1].player_score
        puts "#{@players[0].name} rolled a #{current_turn}, which is a new high score!"
        @players.rotate!
      else
        @won = true
      end
    end
    puts "Game over! #{@players[1].name} wins!"

  end









end
