class game
  attr_accessor :p1 :p2

  def initialize(player_1, player_2)
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
    puts "P1: #{p1.points}/3 vs P2: #{p2.points}/3" 
   end
  end



end