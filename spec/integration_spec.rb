require 'score_card'
require 'frame'

RSpec.describe Integration do
  it "adds one frame to the scorecard" do
    score = ScoreCard.new
    frame_one = Frame.new
    frame_one.first_roll(3)
    frame_one.second_roll(1)

    score.add(frame_one.frame_scores)
    expect(score.total).to eq 4
  end

  it "adds more frames to the scorecard" do
    score = ScoreCard.new
    frame_one = Frame.new
    frame_two = Frame.new
    frame_one.roll(5, 2)
    frame_two.roll(3, 1)

    score.add(frame_one)
    score.add(frame_two)
    expect(score.total).to eq 11
  end

  it "adds a stike to the scorecard" do
    score = Scorecard.new
    frame_one = Frame.new
    frame_two = Frame.new
    frame_one.roll(10)
    frame_two.roll(3, 1)

    score.add(frame_one)
    expect(score.total).to eq 14
  end
end