# Question 1
def q1()
  a = "forty two"
  b = "forty two"
  c = a

  puts a.object_id
  puts b.object_id
  puts c.object_id
end

# Question 2
def q2()
  a = 42
  b = 42
  c = a

  puts a.object_id
  puts b.object_id
  puts c.object_id
end

# Question 3
def q3()
  puts 'string_arg_one: pumkins
  because the method adding strings return a new string inside the loop and doesnt affect the original object outside the loop.'
  puts 'string_arg_two: pumkinsrutabaga
  the << or append method mutate the parameter which points to the original object.'
end

# Question 4
def q4()
  nil
end

# Question 5
def q5()
  def tricky_method(a_string_param, an_array_param)
    if !a_string_param
      an_array_param = ['rutabaga']
    elsif !an_array_param
      a_string_param = 'rutabaga'
    end
  end

  my_string = "pumpkins"
  my_array = ["pumpkins"]
  #tricky_method(my_string, my_array)

  puts "My string looks like this now: #{my_string + tricky_method(my_string,nil)}"
  puts "My array looks like this now: #{my_array + tricky_method(nil,my_array)}"
end

# Question 6
def q6()
  def color_valid(color)
    color == 'green' || color == 'blue' ? true : false
  end

  puts color_valid('green')
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
