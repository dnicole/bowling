class BowlingGame
  attr_accessor :rolls

  # Instantiate a new bowling game.
  #
  # rolls   - The array listing all the 
  #           rolls that have been made in the game
  #
  # Returns a new game object.
  
  def initialize()
    @rolls = []
  end

  # Record a roll in the game.
  # 
  # pins - The Integer number of pins 
  #        knocked down in this roll.
  #
  # Returns nothing.

  def roll(pins)
    @rolls.push(pins)
  end

  # Returns the Integer score for this game.
  #
  # Scores 10 + the number of pins in the next roll
  # for a spare
  #
  # Scores based on pins knocked down per frame if not a spare/strike
  #
  #

  def score
    total_score = 0
    current_roll = 0

    while current_roll < @rolls.size - 1
      roll = @rolls[current_roll]
      next_roll = @rolls[current_roll + 1]

      if roll + next_roll == 10
        total_score += 10 + @rolls[current_roll + 2]
      else
        total_score += roll + next_roll
      end

      current_roll += 2
    end

    return total_score
  end
    #@rolls.reduce(:+) - quick way of summing all numbers in an array

end