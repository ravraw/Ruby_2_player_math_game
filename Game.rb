# Game class
class Game
  TOTAL_LIVES = 3
    # attr_accessor_all :lives
def initialize(player1,player2)1
  @player1 = Player.new(player1)
  @player2 = Player.new(player2)
  @current_player = @player1
end 
  def start_game
    while @player1.lives > 0 && @player2.lives > 0 do
    new_question = Question.new
    puts "#{@current_player.name} : #{new_question.generate_question} "
    puts ">" 
    player_answer =  gets.chomp

    if player_answer.to_i == new_question.answer
      puts "#{@current_player.name} : Yes !!! You are correct. \n\n"
      puts "P1 :#{@player1.lives}/3 Vs  P2 :#{@player2.lives}/3"
    else  
      @current_player.lives -= 1
      puts "#{@current_player.name} : Seriously ? No! \n\n"
       puts "Scores --> P1 :#{@player1.lives}/3 Vs  P2 :#{@player2.lives}/3"
    end
    change_turn
    puts "\n--------------- NEW TURN --------------- \n\n"
    end
  winner
  end

  def winner 
    if @player1.lives == 0 
     puts "********************************************
     #{@player2.name} wins with a score of #{@player2.lives}/3 \n******************************************** \n" 
    end
    if @player2.lives == 0
     puts "#{@player1.name} wins with a score of #{@player1.lives}/3" 
    end
  end

  def change_turn
    if @current_player == @player1
      @current_player = @player2
    else @current_player = @player1
    end
  end
end