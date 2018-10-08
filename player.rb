class Player
  attr_reader  :name
  attr_accessor :life

  def initialize(name, life = 3)
    @name = name
    @life = life
  end

  def wrong_answer
    @life -= 1
  end

end