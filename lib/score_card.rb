class ScoreCard

  def initialize
    @frames = []
  end

  def total
    @score = []
    @frames.each do |frame|
      p "frame number: #{frame}"

      @score << frame.sum # returns an integer of the total score from each frame that has been added
      end
    return @score.sum
  end

  def add(frame) # frame is an instance of Frame
    @frames << frame
    p "this is the @frame : #{@frames}" # adds the frame to the other frames array
    # returns nothing
  end
end