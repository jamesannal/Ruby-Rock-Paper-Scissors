class Game

  def initialize( hand1, hand2 )
    @hand1 = hand1
    @hand2 = hand2
  end

  def winner
    if @hand1 == 'rock' && @hand2 == 'scissors'
      return "Left hand's rock beats the right hand's scissors!"
    elsif @hand1 == 'rock' && @hand2 == 'paper'
      return "Right hand's paper beats left hand's rock!"
    elsif @hand1 == 'scissors' && @hand2 == 'rock'
      return "Right hand's rock beats left hand's scissors!"
    elsif @hand1 == 'scissors' && @hand2 == 'paper'
      return "Left hand's scissors beats right hand's paper!"
    elsif @hand1 == 'paper' && @hand2 == 'rock'
      return "Left hand's paper beats right hand's rock!"
    elsif @hand1 == 'paper' && @hand2 == 'scissors'
      return "Right hand's scissors beats left hand's paper!"
    elsif @hand1 == @hand2
      return "A battle for the ages! (draw)"
    else
      return "No outside weapons!"
    end
  end
end