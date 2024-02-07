=begin
  Info neeed: loan amount, loan duration, APR
  Calculate: monthly interest rate, loan duration in months, monthly payment amount
  m = p * (j / (1 - (1 + j)**(-n)))
  referred to https://www.calculator.net/loan-calculator.html
=end

def prompt(string)
  puts("\n=> #{string}")
end

def numeric?(x)
  Float(x) rescue false
end

def valid_input()
  x = ''
  loop do
    x = gets.chomp
    if numeric?(x)
      break
    else
      prompt("Invalid input. Please enter a number:")
    end
  end
  x
end

def print_info(info) #Print info from hash
  info.each do |k,v|
    puts("#{k}: #{v}")
  end
end


#Main
prompt("MORGAGE CALCULATOR\n")

info = Hash.new # Store info in a hash
choice = ''

loop do # main loop
  prompt("Enter the loan amount:")
  amount = valid_input().to_i()
  info.store("Loan amount", "$ #{amount}")
  prompt("How long is your loan term in years?")
  duration = 12 * valid_input().to_i()
  info.store("Loan duration", "#{duration} months")
  prompt("How much is the annual interest rate? (Enter the percentage amount)")
  apr = valid_input().to_f()
  info.store("Annual interest rate", "#{apr}%")

  #Convert annual to monthly
  mpr = (1.0+(apr/100))**(1.0/12.0)-1.0
  info.store("Monthy interest rate", "#{mpr.round(3)*100}%")

  #Calculate the monthly payment
  payment = amount * (mpr / (1 - (1 + mpr)**(-duration)))

  info.store("Monthly payment", "$ #{payment.round(2)}")

  prompt("RESULT")
  print_info(info)

  prompt("Do you want to use the Morgage Calculator again? (Y = yes)")
  choice = gets.chomp.downcase
  break unless choice.start_with?('y')
end

prompt("Thank you for using Morgage Calculator!")
