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
  def score
    @rolls.reduce(:+)
  end

end