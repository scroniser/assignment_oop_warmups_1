class Rps
  require 'pry'

  def initialize
    @rps_values = {rock: 0, paper: 1, scissors: 2}
    @player_2

  end

  def start
    opponent = computer?
    player_1s_choice = player_input("Player 1")
    player_2s_choice = next_move(opponent)
    who_won(player_1s_choice, player_2s_choice)
  end

  def computer?
    puts "Would you like to play against a person or the computer?"
    puts "enter '1' for person or enter '2' for computer"
    print ">" #todo validation
    number_players = gets.chomp
    if number_players.to_i == 1
      false
    else
      true
    end
  end

  def next_move(is_computer)
    if is_computer == true
      @player_2 = "computer"
      computer_plays
    else
      @player_2 = "Player 2"
      player_input(@player_2)
    end
  end

  def player_input(current_player)
    print "#{current_player}, what's your move? > "
    player_says = gets.chomp.downcase.to_s #todo add validation
    player_move_value = @rps_values[player_says.to_sym]
    puts "#{current_player} said '#{player_says}'"
    player_move_value
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
      "#{@player_2} wins!"
    else
      "I'm not sure what happened"
    end
  end
end