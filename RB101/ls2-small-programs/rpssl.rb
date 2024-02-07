=begin
  Enhanced version of rock-paper-scissors => rock, paper, scissors, spock, lizard
  goals: add in spock and lizard, keep scores and whoever reaches three first wins.
=end
OPTIONS = %w['rock' 'paper' 'scissors' 'spock' 'lizard']

ROCK_LOSE = %w['paper' 'spock']
PAPER_LOSE = %w['scissor' 'lizard']
SCISSORS_LOSE = %w['rock' 'spock']
SPOCK_LOSE = %w['paper' 'lizard']
Lizard_LOSE = %w['rock' 'scissors']

LOSE_CASE = {
  'rock' => ROCK_LOSE,
  'paper' => PAPER_LOSE,
  'scissors' => SCISSORS_LOSE,
  'spock' => SPOCK_LOSE,
  'lizard' => Lizard_LOSE
}

def prompt(string)
  puts("=> #{string}")
end

def display_options()
  OPTIONS.each do |opt|
    if OPTIONS.uniq{|x| x.slice(1)}.include?(opt)
      puts("#{opt.slice(1)}   = #{opt}")
    else
      puts("#{opt.slice(1..2)}  = #{opt}")
    end
  end
end

def menu_choice()
  puts('---------------------------------------')
  prompt('Rock, Paper, Scissors, Spock, Lizard Game
          1. Start game
          2. How to play
          3. Exit')
  choice = ''
  loop do
    choice = gets.chomp
    if %w(1 2 3).include?(choice)
     break
    else
      prompt('Please choose option 1, 2, or 3:')
    end
  end
  choice
end

def display_score(point)
  print("=> Current score:")
  hash = point.transform_keys {|key| key.to_s()}
  hash.each do |key, value|
    print("\t|#{key} => #{value[1]}|")
  end
  print("\n")
end

def display_result(point, round)
  puts('---------------------------------------')
  prompt("Round #{round} result")
  prompt("You played #{point[:player][0]}, Computer played #{point[:computer][0]}")
  display_score(point)
  #Display winner
  point.each do |key, value|
    if value[1] == 3
      prompt("#{key.to_s()} is the winner!!!")
    end
  end
  puts('---------------------------------------')
end

def game_decision(point)
  # 1 = user wins, 2 = computer wins, 3 = tie
  user = point[:player][0]
  comp = point[:computer][0]
  case user
  when comp
    update_pt(3, point)
  when 'rock'
    update_pt(2, point) if LOSE_CASE['rock'].include?(comp)
  when 'paper'
    update_pt(2, point) if LOSE_CASE['paper'].include?(comp)
  when 'scissors'
    update_pt(2, point) if LOSE_CASE['scissors'].include?(comp)
  when 'spock'
    update_pt(2, point) if LOSE_CASE['spock'].include?(comp)
  when 'lizard'
    update_pt(2, point) if LOSE_CASE['lizard'].include?(comp)
  else
    update_pt(1, point)
  end
end

def update_pt(player, point)
  # 1 = user, 2 = computer, 3 = tie
  case player
  when 1
    point[:player][1] = point[:player][1] + 1
  when 2
    point[:computer][1] = point[:computer][1] + 1
  when 3
    point.transform_values! do |value|
      value.map! do |v|
        if v.is_a? Integer
          v += 1
        else
          v
        end
      end
    end
  end
end

# Main Program
play_choice = menu_choice()

while play_choice != '3' do
  case play_choice
  when '1'
    play_choice.to_s().prepend('y')
    break
  when '2'
    #Will work on instruction!
    prompt('Scissors cut Papers cover Rocks crushes Lizard poisons Spocks
    smashes Scissors decapitates Lizards eats Paper disproves Spocks
    vaporizes Rock crushes Scissors.')
    prompt('Press any key to return to menu ...')
    input = gets.chomp
  end
  play_choice = menu_choice()
end

# Begin playing
while play_choice.start_with?('y') do
  user = ['', 0]
  computer = ['', 0]
  points = {
    :player => user,
    :computer => computer
  } #Initialize points
  for round in (1..3) do
    prompt("Round #{round} begin!")

    prompt('Make your selection:')
    display_options()

    # Temp hash options
    hash = {}
    OPTIONS.each do |opt|
      if OPTIONS.uniq{|x| x.slice(1)}.include?(opt)
        hash.store(opt.slice(1), opt)
      else
        hash.store(opt.slice(1..2), opt)
      end
    end

    #validate user input
    loop do
      user[0] = gets.chomp.downcase
      if hash.any?{|key, value| key == user[0]}
        user[0] = hash.fetch(user[0])
        break
      else
        prompt('Invalid choice. Please choose again:')
      end
    end

    computer[0] = OPTIONS.sample

    game_decision(points)

    display_result(points, round)
  end

  prompt("Do you want to try again? (\"Y\" to play again)")
  play_choice = gets.chomp.downcase
end

prompt('Thank you for playing the game.')
