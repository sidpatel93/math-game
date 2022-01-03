class Question
  attr_reader :question, :answer

  def initialize
    num1 = rand(1..20)
    num2 = rand(1..20)
    @answer = num1 + num2
    @question = "What is #{num1.to_s} plus #{num2.to_s}?"
  end
end