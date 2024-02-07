OPTIONS = ['rock', 'paper', 'scissors']

RESULT_MESSAGE = {1 => "Congratulation, you win!",
                  2 => "It's a tie!",
                  3 => "Sorry, you lose!"}

def prompt(string)
  puts("=> #{string}")
end

def game_decision(user, comp)
  # 1 = win, 2 = tie, 3 = lose
  case user
  when comp
    2
  when 'rock'
    if comp == 'paper'
      3
    else
      1
    end
  when 'paper'
    if comp == 'rock'
      1
    else
      3
    end
  when 'scissors'
    if comp == 'rock'
      3
    else
      1
    end
  end
end


#Main
prompt("Let's play Rock, Paper, Scissors")

play_choice = ''
loop do
  prompt("Please choose among #{OPTIONS.join(', ')}")
  user_choice = ''
  #validate user input
  loop do
    user_choice = gets.chomp.downcase
    if OPTIONS.include?(user_choice)
      break
    else
      prompt("Invalid choice. Please choose again:")
    end
  end

  comp_choice = OPTIONS.sample

  prompt("Your selection: #{user_choice}\n   Computer selection: #{comp_choice}")

  result = game_decision(user_choice, comp_choice)

  prompt(RESULT_MESSAGE.fetch(result))

  prompt("Do you want to try again? (\"Y\" to play again)")
  play_choice = gets.chomp.downcase
  break unless play_choice.start_with?('y')
end

prompt("Thank you for playing the game.")
