require './player'
require './questions'

class Game
  attr_reader :rounds, :game_end, :player1, :player2, :current_player, :player_1_lives, :player_2_lives

  puts "---- STARTING GAME ----"

  def initialize
    @rounds = 0
    @game_end = false
    @player1 = Player.new
    @player2 = Player.new
    @current_player = "#{player1.name}"
    @player_1_lives = "#{@player1.life}/3"
    @player_2_lives = "#{@player2.life}/3"
  end

  def start
    while !@game_end
      turn
    end
    puts "---- GAME OVER ----"
    if @player1.life == 0
      puts "#{player2.name} wins with a score of #{@player_2_lives}"
    else
      puts "#{player1.name} wins with a score of #{@player_1_lives}"
    end
    puts "GoodBye! There was a total of #{@rounds} rounds!"
  end

  def validate_answer
    if @current_player == "#{player1.name}"
      @player1.wrong_answer
      @player_1_lives = "#{@player1.life}/3"

      if @player1.life === 0
        @game_end = true
      end

    else
      @player2.wrong_answer
      @player_2_lives = "#{@player2.life}/3"

      if @player2.life === 0
        @game_end = true
      end

    end
  end

  def turn
    puts '----- NEW TURN -----'
    @question = Question.new( @current_player )

    if !@question.answer
      validate_answer
    end

    if @current_player == "#{player1.name}"
      @current_player = "#{player2.name}"

    else
     @current_player = "#{player1.name}"

    end

    puts "#{@player1.name}: #{@player_1_lives} vs #{@player2.name}: #{@player_2_lives}"
    @rounds += 1

  end

end