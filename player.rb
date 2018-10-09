class Player
  attr_accessor :life, :name

  @@player_count = 1

  def initialize(life = 3)
    print "Player #{@@player_count}, enter your name: "
    @name = gets.chomp
    @life = life
    @@player_count += 1
  end

  def wrong_answer
    @life -= 1
  end

end