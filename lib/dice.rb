class Dice

  def roll(n)
    dice_container = []
    n.times { dice_container << rand(1..6) }
    dice_container
  end

end
