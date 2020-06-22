# Create Players
# Need the following variables: score, turn

class Players

  attr_accessor :score, :is_turn 

  def initialize
    @score = 3
    @is_turn = false
  end

end