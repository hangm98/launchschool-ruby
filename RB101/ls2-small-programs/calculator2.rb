# Refactor parts of calculator.rb and add new features
def prompt(string)
  Kernel.puts("=> #{string}")
end


def calculation(num1, num2, op)
  case op
  when '1'
    prompt("Adding two numbers ....")
    num1.to_i() + num2.to_i()
  when '2'
    prompt("Subtracting two numbers ....")
    num1.to_i() - num2.to_i()
  when '3'
    prompt("Multiplying two numbers ....")
    num1.to_i() * num2.to_i()
  when '4'
    prompt("Dividing two numbers ....")
    num1.to_f() / num2.to_f()
  end
end


def valid_number(num)
  loop do #Check valid
    num = Kernel.gets().chomp()
    if num.to_i() != 0
      break
    else
      prompt("Invalid input. Please enter a number:")
    end
  end
  num
end

prompt("Calculator program. Please enter your name:")
name = Kernel.gets().chomp()

#Check if name is valid
loop do
  if name.empty?()
    prompt("Please make sure it is a valid name.")
    name = Kernel.gets().chomp()
  else
    break
  end
end

prompt("Welcome #{name}.")

continue = ''
loop do #Main
  prompt("Please enter the first number")
  num1 = valid_number(num1)

  prompt("Please enter the second number")
  num2 = valid_number(num2)

  choices = <<-ABC
  Please choose an operation:
  1. Add
  2. Subtract
  3. Multiply
  4. Divide
  ABC

  prompt(choices)
  op = Kernel.gets().chomp()

  loop do #Check valid
    if %w(1 2 3 4).include?(op)
      break
    else
      prompt("Only choose 1, 2, 3, or 4.")
      op = Kernel.gets().chomp()
    end
  end

  prompt("The result is #{calculation(num1, num2, op)}.")

  prompt("Would you like to perform another operation? (Y to continue)")
  continue = Kernel.gets().chomp().downcase

  break unless continue.start_with?('y')
end

prompt("Thank you for using Calculator. Bye bye!")
