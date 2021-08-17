class Player
  attr_accessor :name, :lives
  
  LIVES = 3

  def initialize(name)
    @name = name
    @lives =LIVES
    @ps = "P#{name.split.last}" #P1, P2
  end

  def lose_life
    @lives -= 1
  end

  def lives_left
    "#{@ps}: #{lives}/#{LIVES}"
  end

end