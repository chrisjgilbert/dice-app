require 'dice'

describe Dice do

  let(:dice) { Dice.new }

  it 'allows a user to roll a dice' do
    expect(dice).to respond_to :roll
  end

  it 'when 1 dice is rolled returns a number between 1 and 6' do
    expect(dice.roll(1)).to be_between(1, 6)
  end

  it 'accepts a number of nice to roll' do
    expect(dice).to respond_to(:roll).with(1).argument
  end

  it 'returns result for multiple dice roll' do
    expect(dice.roll(3).size).to eq 3
  end

  it 'each roll should be between 1 and 6' do
    result = dice.roll(10)
    result.each { |roll| expect(roll).to be_between(1, 6) }
  end

end
