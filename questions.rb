class Questions
  attr_reader :answer, :question

  def initialize
    @question = ''
    @answer = 0
  end

  def new_q 
    num1 = rand(1...20)
    num2 = rand(1...20)
    @answer = num1 + num2
    @question = "What does #{num1} plus #{num2} equal?"
  end
  
end