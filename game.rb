class Game

  attr_accessor :turn

  def initialize
    @turn = rand(1...2)
  end

  def switch_turns
    @turn == 1 ? @turn= 2 : @turn = 1
  end

end

