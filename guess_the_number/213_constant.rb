class Game
  MAXIMUM_NUMBER = 200

  def initialize
    @secret = rand(MAXIMUM_NUMBER+1)
    @number_of_tries = 0
  end

  def ask_for_number
    puts "Pick number between 0 and #{MAXIMUM_NUMBER}:"
    return gets.to_i
  end

  def run
    loop do
      @number_of_tries += 1
      guess = ask_for_number
      if @secret > guess
        puts "Your number was too small"
      elsif @secret < guess
        puts "Your number was too big"
      else
        puts "Your number was right!"
        puts "You tried #{@number_of_tries} times"
        break
      end
    end
  end
end

Game.new.run
