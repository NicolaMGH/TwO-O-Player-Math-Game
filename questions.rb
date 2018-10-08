class Question
  attr_reader :num1, :num2

  def initialize
    @num1 = 1 + rand(20)
    @num2 = 1 + rand(20)
  end

  def ques
    @num1 + @num2
  end

  def answer
    puts "What is #{num1} + #{num2}"
    print "> "
    users_input = $stdin.gets.chomp.to_i

    if users_input == self.ques
      puts "CORRECT"
    else
      puts "WRONG"
    end
  end

end

newq = Question.new

newq.answer