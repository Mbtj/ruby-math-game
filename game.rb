require './player'

class game
  attr_accessor :p1 :p2

  def initialize
    @p1 = player_1
    @p2 = player_2
    turn = @p1
  end
  

  def turn(player)
    num1 = rand(10)
    num2 = rand(10)
    puts "#{player[:name]}: What does #{num1} plus #{num2} equal?"

    answer = gets.chomp.to_i

    if answer == num1 + num2
      puts "#{player[:name]}: YES! You are correct."
    else
      puts "#{player[:name]}: Seriously? No!"
    end
    
  end

  def winner
    if p1.points == 0
      return p2
    else
      return p1
    end
    return nil
  end
    
    def score_check
      if p1.points > 0 && p2.points > 0
        puts "P1: #{p1.points}/3 vs P2: #{p1.points}/3"
      else
        puts "#{winner().name} wins with a score of #{winner().points}/3"
      end
  end

  def next_turn
    if !game_over?
      puts "----- NEW TURN -----"
    else
      puts "----- GAME OVER -----"
      puts "Good bye!"
    end
  end

  def game_over?
    return winner == nil
  end
  
end