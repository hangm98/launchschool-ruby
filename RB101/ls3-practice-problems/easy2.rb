# Question 1 find key
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

puts ages.any?{|key| key == "Spot"}

puts ages.include?("Spot")

def find_name(ages)
  return_value =''
  ages.each_key do |key|
    if key == "Spot"
      return_value = true
      break
    else
      return_value = false
    end
  end
  return_value
end

puts find_name(ages)

# Question 2 manipulate string
munsters_description = "The Munsters are creepy in a good way."

puts munsters_description.swapcase()
puts munsters_description.downcase()
puts munsters_description.capitalize()
puts munsters_description.upcase()

# Question 3 merge hash
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }

puts ages.merge!(additional_ages)

# Question 4 string scan
advice = "Few things in life are as important as house training your pet dinosaur."
advice.scan("dino") {|w| puts true}

# Question 5 array of single word
puts flintstones = %w[Fred Barney Wilma Betty BamBam Pebbles]

# Question 6 add Dino
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
p flintstones << 'Dino'

# Question 7 array concat and push Dino, Happy
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
p flintstones.push('Dino', 'Happy')
p flintstones.push('Dino').push('Happy')
p flintstones.concat(%w[Dino Happy])

# Question 8 string slice
=begin
 slice = return sliced part, original string stay the same
 slice! = return sliced part, original string - sliced part
=end
advice = "Few things in life are as important as house training your pet dinosaur."

puts advice.slice('Few things in life are as important as ')
puts ('Use string.slice')
puts advice
advice.slice!('Few things in life are as important as ')
puts ('Use string.slice!')
puts advice

# Question 9
statement = "The Flintstones Rock!"
puts statement.count 't'

# Question 10 center string
title = "Flintstone Family Members"
puts title.center(40)
