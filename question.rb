module MathGame
  class Question
    def new_question (currentPlayer)
      r = Random.new
      first_number = r.rand(0...50)
      second_number = r.rand(0...50)
      puts "#{currentPlayer.player}: What does #{first_number} plus #{second_number} equals ?"
      input = nil

      input_number = Thread.new do
        input = gets.chomp
      end

      timer = Thread.new do
        5.downto(0) do |i|
          puts "\r00:00:#{'%02d' % i}"
          sleep 1
          break if input
        end
      end


      input_number.join(5)
      timer.join

      if input.to_i == first_number+second_number
        puts "#{currentPlayer.player}: Yea Yea... Just Keep Going ... "
      else
        insult = ["Please... Seriously ? Are you 8 years old ?", "WTF ? "]
        puts "#{currentPlayer.player}: Please... Seriously ? Are you 8 years old ?"
        currentPlayer.lives -= 1
      end
    end
  end
end