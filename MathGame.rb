require "./player.rb"
require "./turn.rb"
require "./question.rb"


module MathGame
  class Game
    def initialize
      @p1 = Player.new("player1")
      @p2 = Player.new("player2")

      @player_array = [@p1, @p2]

      puts"-------------------------------"
      puts"-- Welcome to the MathGame ! --"
      puts"-------------------------------"


        while @p1.lives > 0 && @p2.lives > 0 do
          @this_player = @player_array[0]
          turn = Turn.new
          question = Question.new
          turn.new_turn
          question.new_question(@this_player)
          puts "P1: #{@p1.lives}/3 vs P2: #{@p2.lives}/3"
          @player_array.reverse!
          game_state = @p1.lives > 0 && @p2.lives > 0
        end
      # else
        if @p1.lives == 0
          puts "Player 2 wins with a score of #{@p2.lives}/3"
        else
          puts "Player 1 wins with a score of #{@p1.lives}/3"
        end
        puts "---------- GAME OVER ----------", "Good Bye !"
      # end
    end
  end
end