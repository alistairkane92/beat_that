require_relative "dice"

class Player < Dice

  def initialize(name, player_score)
    @name = name
    @player_score = player_score

    @dice1 = Dice.new()
  end

  def name
    return @name
  end

  def player_score
    return @player_score
  end

  def four_roll()
    @player_score = []

    4.times do
      @player_score << @dice1.roll()
    end

    @player_score = @player_score.sort.reverse.join.to_i
  end




end
