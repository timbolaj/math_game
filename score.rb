class Score

  attr_accessor :player_1, :player_2, :eval

  def initialize(p1, p2)
    @player_1 = p1
    @player_2 = p2
    @eval = nil
  end

  def set_turn
    #initial turn
    if @player_1.is_turn == @player_2.is_turn && @player_1.is_turn == false
      @player_1.is_turn = true
    elsif @player_1.is_turn == true
      @player_1.is_turn = false
      @player_2.is_turn = true
    else
      @player_1.is_turn = true
      @player_2.is_turn = false
    end
  end

  def deduct_points
    if @eval == false && @player_1.is_turn == true
      @player_1.score -= 1
    elsif @eval == false && @player_2.is_turn == true
      @player_2.score -= 1
    end
  end

  def end_of_round
    self.deduct_points
    if @player_1.score == 0
      puts "Player 1 Terminated." 
      puts "Player 2 wins with a score of #{@player_2.score}/3."
      return
    elsif @player_2.score == 0
      puts "Player 2 Terminated."
      puts "Player 1 wins with a score of #{@player_1.score}/3."
      return
    else
      puts "P1: #{@player_1.score}/3 vs P2: #{@player_2.score}/3."
    end
  end

end