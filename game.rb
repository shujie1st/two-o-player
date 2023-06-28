class Game
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @is_player1 = true
  end

  def start_game
    while true do
      if @is_player1
        player = @player1
      else
        player = @player2
      end

      number1 = rand(1..20)
      number2 = rand(1..20)

      puts "#{player.name}: What does #{number1} plus #{number2} equal?"
      print "> "
      input = gets.chomp.to_i
      result = number1 + number2
      
      if (input == result)
        puts "#{player.name}: YES! You are correct."
      else
        puts "#{player.name}: Seriously? No!"
        player.score -= 1
      end

      if (player.score != 0)
        puts "P1: #{@player1.score}/3 vs P2: #{@player2.score}/3 "
        puts "----- NEW TURN -----"
      else
        winner = @is_player1 ? @player2 : @player1
        puts "#{winner.name} wins with a score of #{winner.score}/3"
        puts "----- GAME OVER -----"
        puts "Good bye!"
        break
      end

      @is_player1 = !@is_player1
    end
  end
end