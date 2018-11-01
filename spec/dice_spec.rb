require 'dice'

describe Dice do

  it 'allows a user to roll a dice' do
    dice = Dice.new
    expect(dice).to respond_to :roll
  end

  it 'when 1 dice is rolled returns a number between 1 and 6' do
    dice = Dice.new
    expect(dice.roll(1)).to be_between(1, 6)
  end

  it 'accepts a number of nice to roll' do
    dice = Dice.new
    expect(dice).to respond_to(:roll).with(1).argument
  end

end
