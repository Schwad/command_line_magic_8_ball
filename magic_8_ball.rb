luck_total = 0
number_of_plays = 1
user_input = "Y"
luck_checker = ""

puts ''
puts ''
puts "Welcome to the command line magic 8 ball! Where fortune and ruby meet to answer your questions! Just ask a question and hit enter!"

sleep 5

while user_input.upcase != "N"

  puts "What is your question?"
  user_answer = gets.chomp
  puts ''
  puts ''
  puts "Shaking the ball..."
  sleep 2
  puts ''
  puts ''

  random_selector = (0..4).to_a.sample
  if random_selector < 3
    luck_total += 1
  end

  luck_result = ((luck_total.to_f / number_of_plays) * 100).round
  #Separated into positive/neutral/negative to track "luck"

  if luck_result > 50
    luck_checker = "You are lucky"
  elsif luck_result <= 50
    luck_checker = "You are not so lucky"
  end

  positive_answers = [
    "It is certain.",
    "It is decidedly so.",
    "Without a doubt.",
    "Yes definitely.",
    "You may rely on it.",
    "As I see it, yes.",
    "Most likely.",
    "Outlook good.",
    "Yes.",
    "Signs point to yes"
  ]

  neutral_answers = [
    "Reply hazy try again.",
    "Ask again later.",
    "Better not tell you now.",
    "Cannot predict now.",
    "Concentrate and ask again."
  ]

  negative_answers = [
    "Don't count on it.",
    "My reply is no.",
    "My sources say no.",
    "Outlook not so good.",
    "Very doubtful"
  ]

  if random_selector == 0 || random_selector == 1
    puts positive_answers.sample
  end

  if random_selector == 3
    puts neutral_answers.sample
  end

  if random_selector == 4
    puts negative_answers.sample
  end

  sleep 1
  puts ''
  puts ''
  sleep 1
  puts "So far in this session you have #{luck_result}% good luck. #{luck_checker}!"
  sleep 3
  puts ''
  puts ''
  puts "play again? Y/N"
  user_input = gets.chomp

  number_of_plays += 1
end

puts "Thanks for playing! See you again soon!"