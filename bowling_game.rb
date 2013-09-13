class BowlingGame
  attr_accessor :rolls

  # Instantiate a new bowling game.
  #
  # rolls   - The array listing all the 
  #           rolls that have been made in the game
  #
  # Returns a new game object.
  
  def initialize
    @rolls = []
    @total_score = 0
    @current_roll = 0
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
  # Figures out what player bowled 
  # and runs appropriate methods to score.
  #

  def score
    while @current_roll < @rolls.size - 1
      init_roll

      if strike?
        score_strike
      elsif spare?
        score_spare
      else
        score_normal
      end
    end

    return @total_score
  end

  private
  
  # Instantiate a new turn in game.
  # 
  # roll    - the current spot in the rolls array.
  #
  # rolls   - The array listing all the 
  #           rolls that have been made in the game
  #
  def init_roll
    @roll = @rolls[@current_roll]
    @next_roll = @rolls[@current_roll + 1]
  end
  
  # Sets the condition for bowling a strike.
  #
  def strike?
    @roll == 10
  end
  
  # Sets the condition for scoring a strike.
  #
  def score_strike
    @total_score += 10 + @rolls[@current_roll + 1] + @rolls[@current_roll + 2]
    @current_roll += 1
  end
  
  # Sets the condition for bowling a spare.
  #
  def spare?
    @roll + @next_roll == 10
  end
  
  # Sets condition for scoring a spare.
  #
  def score_spare
    @total_score += 10 + @rolls[@current_roll + 2]
    @current_roll += 2
  end

  #Sets condition for scoring a normal roll.
  #
  def score_normal
    @total_score += @roll + @next_roll
    @current_roll +=2
  end
end
    #@rolls.reduce(:+) - quick way of summing all numbers in an array
      