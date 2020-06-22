# Make object with math addition questions
# digits must be from 1 to 20

# Question maker: rand(1..20)
# Solution variable
class Question 

  attr_reader :evaluation

  def initialize()
    @first_num = rand(1..20)
    @second_num = rand(1..20)
    @solution = @first_num + @second_num
    @question = "What does #{@first_num} plus #{@second_num} equal?"
    @response = nil
    @evaluation = nil
  end

  def question_evaluator
    puts @question
    @response = gets.chomp.to_i
    
    if @response != @solution
      puts "Excellent job! You lost a life!"
      @evaluation = false
    else
      puts "You'll live to see another question"
      @evaluation = true
    end
  end

end