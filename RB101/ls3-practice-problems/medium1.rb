# Question 1 Print 10 times with indentation
def q1()
  str = 'The Flintstones Rock!'
  10.times {|num| puts " " * num + str}
end

# Question 2
def q2()
  puts("\"The value of 40 + 2 is\" + (40 + 2)
  error: string concat with integer.")
  puts("Fix 1: to_s()")
  puts("The value of 40 + 2 is " + (40+2).to_s)
  puts("Fix 2: \#{}")
  puts("The value of 40 + 2 is #{40 + 2}")
end

# Question 3
def q3()
  puts("def factors(number)
    divisor = number
    factors = []
    begin
      factors << number / divisor if number % divisor == 0
      divisor -= 1
    end until divisor == 0
    factors
  end")
  puts('number % divisor == 0: to check if number divisible by divisor with no remainder.')
  puts("\'factors\' before end: return factors array.")
  puts('Fix: not using begin end until')

  def factors(num)
    divisor = num.abs
    arr = []
    while divisor != 0
      arr << num.abs / divisor if num.abs % divisor == 0
      divisor -= 1
    end
    if num > 0
      arr
    else
      arr.concat(arr.map{|x| x = -x})
    end
  end

  print ('Enter a number: ')
  num = gets.chomp.to_i
  puts("Factors of #{num} is: #{factors(num)}")
end

# Question 4
def q4()
  puts('First method return the reference to the object itself and mutate the object.')
  puts('Second method return new object without mutating the original object that was passed.')
end

# Question 5 fib calculator
def q5()
  def fib(first_num, second_num)
    limit = 15
    while first_num + second_num < limit
      sum = first_num + second_num
      first_num = second_num
      second_num = sum
    end
    sum
  end

  result = fib(0, 1)
  puts "result is #{result}"
end

# Question 6
puts ("output: 34")

# Question 7
puts 'The family data got ransacked because the hash object being passed is the
reference to the memory space. When modify the values of keys which is mutable of the reference,
it affect the memory space and modify it too.'

# Question 8 nested method calls
puts 'output: paper'

# Question 9
puts 'output: no.
foo will always return yes
in bar, yes == no is false so return no'

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
