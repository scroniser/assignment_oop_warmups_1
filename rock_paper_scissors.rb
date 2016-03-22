class Rps
  require 'pry'
  attr_accessor :player_says
  attr_reader :winner
  attr_accessor :player_move_value
  def initialize
    @rps_values = {rock: 0, paper: 1, scissors: 2}
  end
  def start
    player_1 = player_input
    computer = computer_plays
    @winner = who_won(player_1, computer)
  end
  def player_input
    print "What's your move? > "
    @player_says = gets.chomp.downcase.to_s
    @player_move_value = @rps_values[@player_says.to_sym]
    print "You said '#{@player_says}' (test) #{@player_move_value} here\n"
    @rps_values[@player_says.to_sym]
  end
  def computer_plays
    computer = Random.new.rand(0..2)
    puts "The computer says '#{@rps_values.key(computer)}'"
    computer
  end
  def who_won(player_1, player_2)
    if player_1 == player_2
      "tie game"
    elsif player_1 > player_2 || (player_1 == 0 && player_2 ==2)
      "Player 1 wins!"
    elsif player_2 > player_1 || (player_2 == 0 && player_1 == 2)
      "Computer wins :("
    else
      "I'm not sure what happened"
    end
  end
end