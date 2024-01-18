class Game
  attr_accessor :name, :answer, :over

  def initialize
    @player_name = name
    @player_answer = answer
    @over = false
  end

  def play
    puts "Hello! Welcome to Alana's guessing game. What's your name?"

    @player_name = gets.chomp.capitalize

    puts "Hello #{@player_name}! It's very nice to meet you!"

    puts "Before we get started, shall I explain to you the rules of the game? (y = yes/n = no)"
    # puts "\n"
    @player_answer = gets.chomp
    # puts "\n"
    if @player_answer == "y" || @player_answer == "yes" || @player_answer == "Yes" || @player_answer == "yes!" || @player_answer == "Yes!" || @player_answer == "YES" || @player_answer == "sure" || @player_answer == "Sure" # use the .include? method and put answers in an array
      puts "Here are the rules: 
      Rule 1: Guess a word or name based on the question or randomly outputted string.
      Rule 2: As you progress through the game the questions will get increasingly difficult and you will have less chances to try again.
      Rule 4: If you exhaust your chances you lose the game.
      Rule 5: If you complete all the levels you win the game.
      Bonus rule: Have fun and enjoy! ;D" #put rules in a method
      # puts "\n"
      # sleep(10)
      puts "Let's get started!"
      # puts "\n"
      # sleep(3)
    elsif @player_answer == "n" || @player_answer == "no" || @player_answer == "No" || @player_answer == "no!" || @player_answer == "No!" || @player_answer == "NO"
      # puts "\n"
      puts "Lets get started!"
      # sleep(1)
    else 
      puts "Let's get started; I guess..."
      # sleep(1)
    end
    # puts "\n"
    practice_question
  end
  
  def practice_question 
    puts "Question 1: Multiple Choice"
    puts first_question = "What's my favorite color?"
    puts "
            a. pink
            b. baby blue
            c. off white
            d. navy blue
      "
    word_one = ["a" , "pink"]
      @player_answer = gets.chomp  
  
    while @player_answer != word_one[0] && @player_answer != word_one[1]
      puts "Incorrect! Try again."
      @player_answer = gets.chomp
    end
  
    if @player_answer == word_one[0] || word_one[1]
      puts "Correct!" 
    end
    
    puts "On to the next question..."
    puts second_question = "I'm thinking of a number between 1 and 10. Tell me, what number is that?"
  

    number = rand(10)
    
    while true
      # puts second_question = "I'm thinking of a number between 1 and 10. Tell me, what number is that?"
    
      @player_answer = gets.chomp.to_i
  
      if @player_answer < number
        puts "Hmm... #{@player_answer} is too low. Try a bigger number."
      elsif @player_answer > number
        puts "Hmm... #{@player_answer} is too high. Try a smaller number."
      else @player_answer == number
        puts "Correct!"
        break
      end
      end
      message
    end
    
    def message 
      puts "Doing good so far! That was just a warm up!"
  
        puts "Let's play a game!"
        sleep(2)
        puts "Level: 1 (multiple choice)"
        level_one
    end
  
    def level_one
      puts "What character's birthday is November 1st, 1974, wears a bow, and was born in London, England?"
      puts "
            a. Spongebob
            b. Mickey Mouse
            c. Hello Kitty
            d. Minnie Mouse"
  
  
        chance_count = 0
        chances = 3
    
        while chance_count != chances
          @player_answer = gets.chomp
          level_one_answer = ["c", "Hello Kitty", "hello kitty"]
          if @player_answer != level_one_answer[0] && @player_answer != level_one_answer[1] && @player_answer != level_one_answer[2]
            puts "Incorrect! Try again!"
          chance_count += 1
          if chance_count == chances 
      puts "                                                                                           
      _/_/_/    _/_/    _/      _/  _/_/_/_/        _/_/    _/      _/  _/_/_/_/  _/_/_/    
    _/        _/    _/  _/_/  _/_/  _/            _/    _/  _/      _/  _/        _/    _/   
    _/  _/_/  _/_/_/_/  _/  _/  _/  _/_/_/        _/    _/  _/      _/  _/_/_/    _/_/_/      
    _/    _/  _/    _/  _/      _/  _/            _/    _/    _/  _/    _/        _/    _/     
    _/_/_/  _/    _/  _/      _/  _/_/_/_/        _/_/        _/      _/_/_/_/  _/    _/      
                                                                                            
    " #put this into a method
  
    puts "Would you like to play again?"
    play_again = gets.chomp
  
  
      break if play_again == "y" || play_again == "yes" || play_again == "Yes" || play_again == "yes!" || play_again == "Yes!" || play_again == "YES" || play_again == "sure" || play_again == "Sure"
      Game.new
      end
          elsif
            @player_answer == level_one_answer[0] || @player_answer == level_one_answer[1] || @player_answer == level_one_answer[2]
            puts "
                                  _   _         _  _          _   __ _
                                  | | | |  ___  | || |  ___   | | / /(_)  _     _
                                  | |_| | / _   | || | /  _ | | |/ /  _ _| |_ _| |_  _  _
                                  |  _  |/ /_| || || |/  /| | |   /  | |_   _|_   _|| |/ /
                                  | | | || ,___/| || || |_/ / | || | | | | |_  | |_ | / /
                                  |_| |_| |___/ |_||_| |___/  |_| |_||_| |___| |___||  /
                                                                                    / /
                                                                                                        
                                                ..                     .''.
                                                c  '.          _,,    .'    '
                                              ,     ,   ___  7###. .'       '
                                              .       `-'   ''|####;#'. .##, .
                                              ,               '####.##,######.
                                            .                 '  ' '' ,####.
                                            '                           '##'.
                                          '                                .
                                    __,,--.--                                '
                                          '                                  '
                                      .--|-        &&                        -'-'''-.._
                                        |         '&              &&         '
                                        __,-                       '&        -'---.
                                      ''  ,                                   ;
                                          .             kk.                 -.-,_
                                            -_           ''KK                ;
                                              ''--,_                        ,
                                                    ''--,__           __,,--'
                                                          ''--..,--''     Pr59"                                       
            puts "Correct! Nice work!" 
            message_two
          break
          end
        end
    end
  
  
    def message_two
      puts "\n"
      puts "Are you ready for the next level?"
      @player_answer = gets.chomp
      if @player_answer == "yes" 
        puts "Awesome! Let's get started!"
      elsif @player_answer == "no"
        puts "Are you sure?"
      else 
        puts "Let's get started then..."
        sleep(3)
      end
      level_two
    end
    
    def level_two
  
      puts "Level 2: Type the best answer!"

  
      level_two_answer = "Ada Lovelace"
      # @player_answer = gets.chomp
      chance_count = 0
      chances = 2

      while chances != chance_count
        puts "Who wrote the first computer program?"
        @player_answer = gets.chomp
        chance_count += 1
        if @player_answer != level_two_answer
          puts "Incorrect! Try again!"
          if chance_count == chances 
            puts "                                                                                           
              _/_/_/    _/_/    _/      _/  _/_/_/_/        _/_/    _/      _/  _/_/_/_/  _/_/_/    
              _/        _/    _/  _/_/  _/_/  _/            _/    _/  _/      _/  _/        _/    _/   
              _/  _/_/  _/_/_/_/  _/  _/  _/  _/_/_/        _/    _/  _/      _/  _/_/_/    _/_/_/      
              _/    _/  _/    _/  _/      _/  _/            _/    _/    _/  _/    _/        _/    _/     
              _/_/_/  _/    _/  _/      _/  _/_/_/_/        _/_/        _/      _/_/_/_/  _/    _/      
                                                                                                      
              " #put this into a method
    
              puts "Would you like to play again?"
              play_again = gets.chomp
    
    
              break if play_again == "y" || play_again == "yes" || play_again == "Yes" || play_again == "yes!" || play_again == "Yes!" || play_again == "YES" || play_again == "sure" || play_again == "Sure"
              # Game.new
            end # chance_cont ==
          elsif @player_answer == level_two_answer
            puts "
              
              /|                          .-.                       .;                  
          _  / |         .'             ;' (_)          .-.        .;'                  
          (  /  |  . .-..'  .-.        .:'      .-. _.;  :  .-.    .;  .-.    .-.   .-.  
          `/.__|_.':   ;  ;   :      .:'      ;   ;';   ;.;.-'   ::  ;   :  ;    .;.-'  
      .:' /    |   `:::'`.`:::'-'  .-:.    .-.`;;'  `._.' `:::'_;;_.-`:::'-'`;;;;'`:::' 
      (__.'     `-'                (_/ `;._.                                             
  
            #{@player_answer} is correct! "
            break # while changes !=
          end # if, elsif
        message_three
      end # while
  end # level_two

  def message_three
    puts "If you have made it this far, you've done quite well!"

    puts "Here is the last and final challenge..."
    level_three
  end  # message_three

  def level_three
    puts "Level 3: Tic Tac Toe"

    board = [""]
  end
  #Game.new
end # Game 