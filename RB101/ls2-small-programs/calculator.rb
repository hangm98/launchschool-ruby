#Get input from user (2 integers and an operation)
#Perform the operation
#Output the result
def cal(num1, num2, op)
  if op == '1' || op == 'add'
    num1.to_i() + num2.to_i()
  elsif op == '2' || op == 'subtract'
    num1.to_i() - num2.to_i()
  elsif op == '3' || op == 'multiply'
    num1.to_i() * num2.to_i()
  elsif op == '4' || op == 'divide'
    num1.to_f() / num2.to_f()
  else
    puts "Invalid input!"
    exit(0)
  end
end

Kernel.puts("Calculator program")

Kernel.puts("Please enter the first number")
num1 = Kernel.gets().chomp()

Kernel.puts("Please enter the second number")
num2 = Kernel.gets().chomp()

Kernel.puts("Please choose an operation: 1. Add, 2. Subtract, 3. Multiply, 4. Divide")
op = Kernel.gets().chomp()

Kernel.puts("The result is #{cal(num1, num2, op.downcase)}.")
