class Game
  attr_accessor :name, :answer, :over, :yes, :no

  def initialize
    @player_name = name
    @player_answer = answer
    @over = false
    @yes_answer = yes
    @no_answer = no
  end

  def rules
    puts "Before we get started, shall I explain to you the rules of the game? (y = yes/n = no)"
    @player_answer = gets.chomp
    @yes_answer = ["y", "yes", "Yes", "yes!", "Yes!", "YES", "sure", "Sure"]
    @no_answer = ["n", "no", "No", "no!", "No!", "NO"]
    if @yes_answer.include?(@player_answer)
      puts "Here are the rules: 
      Rule 1: Guess a word or name based on the question or randomly outputted string.
      Rule 2: As you progress through the game the questions will get increasingly difficult and you will have less chances to try again.
      Rule 4: If you exhaust your chances you lose the game.
      Rule 5: If you complete all the levels you win the game.
      Bonus rule: Have fun and enjoy! ;D"
    elsif @no_answer.include?(@player_answer)
      puts "Lets get started!"
    else 
      puts "Let's get started; I guess..."
    end
  end 

  def game_over
    puts "Sorry, #{@player_name} you lost the game."
    puts "                                                                                           
              _/_/_/    _/_/    _/      _/  _/_/_/_/        _/_/    _/      _/  _/_/_/_/  _/_/_/    
            _/        _/    _/  _/_/  _/_/  _/            _/    _/  _/      _/  _/        _/    _/   
            _/  _/_/  _/_/_/_/  _/  _/  _/  _/_/_/        _/    _/  _/      _/  _/_/_/    _/_/_/      
            _/    _/  _/    _/  _/      _/  _/            _/    _/    _/  _/    _/        _/    _/     
            _/_/_/  _/    _/  _/      _/  _/_/_/_/        _/_/        _/      _/_/_/_/  _/    _/      
            "
  end #game_over

  def play_again
    puts "Would you like to play again?"
    @player_answer = gets.chomp
    @yes_answer
    @no_answer
  end

  def winner
    puts "#{@player_name} is a winner!" 
    puts "
     ▄         ▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄        ▄  ▄▄        ▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄ 
    ▐░▌       ▐░▌▐░░░░░░░░░░░▌▐░░▌      ▐░▌▐░░▌      ▐░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌
    ▐░▌       ▐░▌ ▀▀▀▀█░█▀▀▀▀ ▐░▌░▌     ▐░▌▐░▌░▌     ▐░▌▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀▀▀▀█░▌▐░▌
    ▐░▌       ▐░▌     ▐░▌     ▐░▌▐░▌    ▐░▌▐░▌▐░▌    ▐░▌▐░▌          ▐░▌       ▐░▌▐░▌
    ▐░▌   ▄   ▐░▌     ▐░▌     ▐░▌ ▐░▌   ▐░▌▐░▌ ▐░▌   ▐░▌▐░█▄▄▄▄▄▄▄▄▄ ▐░█▄▄▄▄▄▄▄█░▌▐░▌
    ▐░▌  ▐░▌  ▐░▌     ▐░▌     ▐░▌  ▐░▌  ▐░▌▐░▌  ▐░▌  ▐░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌
    ▐░▌ ▐░▌░▌ ▐░▌     ▐░▌     ▐░▌   ▐░▌ ▐░▌▐░▌   ▐░▌ ▐░▌▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀█░█▀▀ ▐░▌
    ▐░▌▐░▌ ▐░▌▐░▌     ▐░▌     ▐░▌    ▐░▌▐░▌▐░▌    ▐░▌▐░▌▐░▌          ▐░▌     ▐░▌   ▀ 
    ▐░▌░▌   ▐░▐░▌ ▄▄▄▄█░█▄▄▄▄ ▐░▌     ▐░▐░▌▐░▌     ▐░▐░▌▐░█▄▄▄▄▄▄▄▄▄ ▐░▌      ▐░▌  ▄ 
    ▐░░▌     ▐░░▌▐░░░░░░░░░░░▌▐░▌      ▐░░▌▐░▌      ▐░░▌▐░░░░░░░░░░░▌▐░▌       ▐░▌▐░▌
     ▀▀       ▀▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀        ▀▀  ▀        ▀▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀         ▀  ▀ "
  end

  def correct_lvl_one
    puts "
                                   _   _         _  _          _   __ _
                                  | | | |  ___  | || |  ___   | | / /(_)  _     _
                                  | |_| | / _   | || | /  _ | | |/ /  _ _| |_ _| |_  _  _
                                  |  _  |/ /_| || || |/  /| | |   /  | |_   _|_   _|| |/ /
                                  | | | || ,___/| || || |_/ / | || | | | | |_  | |_ | / /
                                  |_| |_| |___/ |_||_| |___/  |_| |_||_| |___| |___||  /
                                                                                    / /
                                                                                                        
                                                ..                      .''.
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
  end #correct_lvl_one

  def correct_lvl_two
    puts "
              
              /|                          .-.                       .;                  
          _  / |         .'             ;' (_)          .-.        .;'                  
          ( /  |  . .-..'  .-.        .:'      .-. _.;  :  .-.    .;  .-.    .-.   .-.  
          `/.__|_.':   ;  ;   :      .:'      ;   ;';   ;.;.-'   ::  ;   :  ;    .;.-'  
      .:' /    |   `:::'`.`:::'-'  .-:.    .-.`;;'  `._.' `:::'_;;_.-`:::'-'`;;;;'`:::' 
      (__.'     `-'                (_/ `;._.                                             
  
            #{@player_answer} is correct! "
  end #correct_lvl_two

  def play
    puts "Hello! Welcome to Alana's guessing game. What's your name?"

    @player_name = gets.chomp.capitalize

    puts "Hello #{@player_name}! It's very nice to meet you!"
    rules
    practice_question
  end #play
  
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
    puts "\n"
    practice_question_two
  end #practice_question

  def practice_question_two
    puts second_question = "I'm thinking of a number between 1 and 10. Tell me, what number is that?"
    number = rand(1..10)
    
    while true
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
  end #practice_question_two
    
  def message 
    puts "Doing good so far! That was just a warm up!"

      puts "Let's play a game!"
      # sleep(2)
      puts "Level: 1 (multiple choice)"
      level_one
  end #message
  
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
          game_over
          play_again
        if @yes_answer.include?(@player_answer)
          break
        else
          exit
        end
      end
        elsif
          @player_answer == level_one_answer[0] || @player_answer == level_one_answer[1] || @player_answer == level_one_answer[2]
          correct_lvl_one
          message_two
        break
        end
      end
  end #level_one
  
  def message_two
    puts "\n"
    puts "Are you ready for the next level?"
    @yes_answer
    @no_answer
    @player_answer = gets.chomp
    if @yes_answer.include?(@player_answer)
      puts "Awesome! Let's get started!"
    elsif @no_answer.include?(@player_answer)
      puts "Are you sure?"
      @player_answer = gets.chomp
      if @yes_answer.include?(@player_answer)
        exit
      end
    else 
      puts "Let's get started then..."
      # sleep(3)
    end
    level_two
  end #message_two
    
  def level_two
    puts "Level 2: Type the best answer!"

    chance_count = 0
    chances = 2

    while chances != chance_count
      puts "Who wrote the first computer program?"
      @player_answer = gets.chomp
      level_two_answer = "Ada Lovelace"
      chance_count += 1
      if @player_answer != level_two_answer
        puts "Incorrect! Try again!"
      if chance_count == chances 
        game_over
        play_again
        if @yes_answer.include?(@player_answer)
          break
        else
          exit
        end
      end # chance_cont ==
        elsif @player_answer == level_two_answer
          correct_lvl_two
          message_three 
          break # while changes !=
        end # if, elsif
    end # while    
  end # level_two

  def message_three
    puts "If you have made it this far, you've done quite well!"
    puts "\n"
    puts "Here is the last and final challenge..."
    puts "\n"
    level_three
  end  # message_three

  def level_three
    puts "Level 3: Advanced Guess the Word or Number"
    puts "You only get one try! So make your best guess!"

    random_words = ["lovely", "pink", "ruby", "code"]
    random_numbers = rand(1..10).to_s

    words_and_numbers = "#{random_words.sample} #{random_numbers}"
    
    puts "The random words are '#{random_words[0..4].join("', '")}' and the random numbers are from 1-10"
    puts "What word and number combination do you think will appear?"
    @player_answer = gets.chomp

    if @player_answer != words_and_numbers
      puts "#{@player_answer} is incorrect! The word and number combination was #{words_and_numbers}"
      game_over
    else @player_answer == words_and_numbers
      winner
      puts "#{words_and_numbers}"
      puts "#{@player_answer} is the correct word and number combination!"
    end
    play_again
      if @no_answer.include?(@player_answer)
        exit
      end
  end
end # Game 
