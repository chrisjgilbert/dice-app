class Dice

  def roll(n)
    return rand(1..6) if n == 1
    dice_container = []
    n.times { dice_container << rand(1..6) }
    dice_container
  end

end
