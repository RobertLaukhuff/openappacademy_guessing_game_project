class GuessingGame
  def initialize(min, max)
    @min = min
    @max = max
    @secret_num = rand(min..max)
    @num_attempts = 0
    @game_over = false
  end

  def num_attempts
    @num_attempts
  end

  def game_over?
    @game_over
  end

  def check_num(number)
    @num_attempts += 1
    if number == @secret_num
      @game_over = true
      print "you win"
    elsif number > @secret_num
      print "too big"
    else number < @secret_num
      print "too small"
    end
  end

  def ask_user
    print "enter a number: "
    guess = gets.chomp.to_i
    check_num(guess)
  end
end
