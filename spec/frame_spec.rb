require_relative '../lib/frame'

RSpec.describe Frame do

  it "initiates a new instance of frame" do
    frame = Frame.new
  end

  it "saves a score for that frame as an array" do
    frame = Frame.new
    frame.first_roll(5)
    frame.second_roll(2)

    expect(frame.frame_scores).to eq [5, 2]
  end

  it "knows when is a strike" do
    frame = Frame.new
    frame.first_roll(10)

    expect(frame.strike?).to eq true
  end

  it "knows when is a spare" do
    frame = Frame.new
    frame.first_roll(5)
    frame.second_roll(5)

    expect(frame.strike?).to eq false
    expect(frame.spare?).to eq true
  end

  it "returns an error if the sum of first and second roll > 10" do
    frame = Frame.new
    frame.first_roll(7)

    expect { frame.second_roll(4) }.to raise_error "the sum for first_roll and second_roll can not be grater than 10"
  end
end