class Question
  attr_reader :num1, :num2
  attr_accessor :is_right

  def initialize(current_player)
    @num1 = 1 + rand(20)
    @num2 = 1 + rand(20)
    puts "#{current_player}: What does #{num1} plus #{num2} equal?"
    print "> "
  end

  def ques
    @num1 + @num2
  end

  def answer
    users_input = $stdin.gets.chomp.to_i

    if users_input == self.ques
      puts "Good Work!!!"
      @is_right = true
    else
      puts "Seriously? WRONG!!!"
      @is_right = false
    end
  end

end
