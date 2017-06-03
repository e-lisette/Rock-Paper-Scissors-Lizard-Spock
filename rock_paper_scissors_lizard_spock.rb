require 'io/console'
class Game

  def play
    puts "1 or 2 Players?"
    @player_number = gets.chomp
    start
    player1
    if @player_number == "1"
      comp_turn
    else
      player2
    end
    who_won
  end

  def start
    puts "*******************************************"
    puts "Welcome to Rock-Paper-Scissors-Lizard-Spock"
    puts "*******************************************"
  end

  def player1
    puts "What will it be Player 1? Rock, paper, scissors, lizard or Spock?"
    @player1_guess = STDIN.noecho(&:gets).chomp.downcase
  end

  def player2
    puts "What will it be Player 2? Rock, paper, scissors, lizard or Spock?"
    @player2_guess = gets.chomp.downcase
  end

  def comp_turn
    options = ["rock", "paper", "scissors", "lizard", "spock"]
    @player2_guess = options.sample
    puts "*******************************"
    puts "Second player chose: "
    puts @player2_guess
  end

  def who_won
      puts "*******************************"
      puts "Player 1 chose: #{@player1_guess}"
      if @player_number == "2"
        puts "Player 2 chose: #{@player2_guess}"
      else
        puts "Computer chose: #{@player2_guess}"
      end
    if @player1_guess == @player2_guess
      puts "*******************************"
      puts "#{@player1_guess} vs #{@player2_guess}!"
      puts "It's a tie!"
      puts "ヽ(´ー｀)┌"
      puts "*******************************"
    elsif
      @player1_guess == "scissors" && @player2_guess == "paper" ||
      @player1_guess == "scissors" && @player2_guess == "lizard" ||
      @player1_guess == "paper" && @player2_guess == "rock" ||
      @player1_guess == "paper" && @player2_guess == "spock" ||
      @player1_guess == "rock" && @player2_guess == "lizard" ||
      @player1_guess == "rock" && @player2_guess == "scissors" ||
      @player1_guess == "lizard" && @player2_guess == "spock" ||
      @player1_guess == "lizard" && @player2_guess == "paper" ||
      @player1_guess == "spock" && @player2_guess == "scissors" ||
      @player1_guess == "spock" && @player2_guess == "rock"
      puts "*******************************"
      puts "#{@player1_guess} beats #{@player2_guess}!"
      puts "Player1 wins!"
      puts "〈( ^.^)ノ Player 1 wins!"
      puts "*******************************"
    else
      if @player_number == "2"
        puts "*******************************"
        puts "#{@player2_guess} beats #{@player1_guess}!"
        puts "Player 2 wins!"
        puts "(/◕ヮ◕)/"
        puts "*******************************"
      else
        puts "*******************************"
        puts "#{@player2_guess} beats #{@player1_guess}!"
        puts "Computer Won!"
        puts "(ー_ー)!!"
        puts "*******************************"
      end
    end
  end

end

      current_game = Game.new
      current_game.play
