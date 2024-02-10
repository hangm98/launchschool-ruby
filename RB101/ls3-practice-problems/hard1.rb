# Question 1
def q1()
  puts 'greeting is nil'
end

# Question 2
def q2()
  puts 'output is {a => hi there}'
  puts 'informal_greeting = greeting[:a] => informal_greeting is a pointer to key :a in greeting hash'
end

# Question 3
def q3()
  puts 'A and B case, mess_with_vars doesnt change variables outside of that method.'
  puts 'C case, one is two, two is three, three is one. Because of gsub!()'
end

# Question 4
def q4()
  def dot_separated_ip_address?(input_string)
    dot_separated_words = input_string.split(".")
    ip_length = 0
    while dot_separated_words.size > 0 do
      word = dot_separated_words.pop
      ip_length += 1
      break unless is_an_ip_number?(word)
    end
    if ip_length == 4
      true
    else
      false
    end
  end
end



# Question selection
print 'Which question?'
question = gets.chomp.to_i
case question
when 1
  q1()
when 2
  q2()
when 3
  q3()
when 4
  q4()
when 5
  q5()
when 6
  q6()
when 7
  q7()
when 8
  q8()
when 9
  q9()
end
