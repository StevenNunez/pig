def roll
 rand(1..6)  # => 4
end

def roll_and_verify
  outcome = roll
  abort("You rolled a 1, sorry") if outcome == 1
  outcome
end

puts "welcome to a game that will probably ruin your life"
score = roll_and_verify

loop do
  puts "Your score is #{score}"
  puts "Would you like to roll again? (y/n)"
  response = gets.chomp.downcase
  break unless response == 'y'
  score += roll_and_verify
end

puts "You made it! Your final score is #{score}"

# greet
# would you like to roll?
# you rolled a 1, sorry
# game over

# greet
# would you like to roll?
# you rolled a 2
# would you like to roll again?
# y
# you rolled a 2
# would you like to roll again?
# n
# your score is 4
# game over
