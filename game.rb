require './player.rb'

class Game
  attr_accessor :p1, :p2

  def initialize
    @p1 = Player.new("Player 1")
    @p2 = Player.new("Player 2")
    @current_player = @p1
  end
  

  def turn
    num1 = rand(10)
    num2 = rand(10)
    puts "#{@current_player.name}: What does #{num1} plus #{num2} equal?"

    answer = gets.chomp.to_i

    if answer == num1 + num2
      puts "#{@current_player.name}: YES! You are correct."
    else
      puts "#{@current_player.name}: Seriously? No!"
      @current_player.lose_point()
    end
    switch_player()
  end

  def switch_player
    if @current_player == p1
      @current_player = p2
    else
      @current_player = p1
    end
  end

  def winner
    if p1.points == 0
      return p2
    elsif p2.points == 0
      return p1
    else
      return nil
    end
  end
    
    def score_check
      if p1.points > 0 && p2.points > 0
        puts "P1: #{p1.points}/3 vs P2: #{p2.points}/3"
      else
        puts "#{winner().name} wins with a score of #{winner().points}/3"
      end
  end

  def next_turn
    if !game_over?()
      puts "----- NEW TURN -----"
    else
      puts "----- GAME OVER -----"
      puts "Good bye!"
    end
  end

  def game_over?
    return winner != nil
  end

  def run
    while !game_over?()
      turn()
      score_check()
      next_turn()
    end
  end



end