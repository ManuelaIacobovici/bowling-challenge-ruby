class Frame
  def initialize
    @frame_score = []
  end

  def roll(first, second)
    
  end

  def first_roll(first_score) # first_score is an integer
    @first_score = first_score
    @frame_score << first_score
    # returns nothing
  end

  def second_roll(second_score) # second_score is an integer
    @second_score = second_score
    @frame_score << second_score
  end

  def frame_scores
    fail "before final score is calculated you have to roll another ball" unless @frame_score.include?(@first_score) && @frame_score.include?(@second_score)
    return @frame_score
  end

  def strike?
    if @first_score == 10
      return true
    else
      return false
    end
  end

  def spare?
    if @frame_score.sum == 10
      return true
    else
      return false
    end
  end
end