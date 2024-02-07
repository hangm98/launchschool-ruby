# Question 1
nums = [1,2,2,3]
nums.uniq
puts nums

# Question 2
=begin
!= not equal, used in conditional statement
! before sth is negation
! after sth is mutation
? before sth is ternary operator for if/else
? after sth is boolean
!! double negation, always evaluate to true/false
=end

# Question 3 replace important with urgent
advice = "Few things in life are as important as house training your pet dinosaur."
temp = advice.split()
temp.each_with_index do |word, index|
  if word == 'important'
    word = 'urgent'
    temp[index] = word
  end
end
puts advice.replace(temp.join(' '))

# Question 4
=begin
delete_at() = delete at the index
delete() = delete starting from beginning of array
=end

# Question 5
def is_in_range()
  for i in (10..100) do
    if i == 42
      break
    else
      false
    end
  end
  true
end

p is_in_range()

# Question 6
famous_words = "seven years ago..."
to_add = "Four score and "
puts to_add + famous_words
puts famous_words.prepend(to_add)

# Question 7 unnested array
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

p flintstones.flatten

# Question 8 store specific key value pair in array
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
arr = []
flintstones.each_key do |key|
  if key == 'Barney'
    arr << key << flintstones.fetch(key)
  end
end
p arr
