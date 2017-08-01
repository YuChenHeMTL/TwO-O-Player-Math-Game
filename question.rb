module MathGame
  class Question
    def new_question (currentPlayer)
      r = Random.new
      first_number = r.rand(0...500)
      second_number = r.rand(0...500)
      puts "#{currentPlayer.player}: What does #{first_number} plus #{second_number} equals ?"
      input = gets.chomp.to_i
      if input == first_number+second_number
        puts "#{currentPlayer.player}: Yes ! You are correct !"
      else
        puts "#{currentPlayer.player}: Please... Seriously ?"
        currentPlayer.lives -= 1
      end
    end
  end
end