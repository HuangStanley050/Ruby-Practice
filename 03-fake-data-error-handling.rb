# frozen_string_literal: true

# Faker Gem challenge

# Ask the user to input a Faker.Name method.

# Write a method which does the following...

# 1. Takes the name entered by the user.

# 2. Calls the corresponding Faker.Name method, and returns the result.

# 3. Uses begin/rescue/else to catch errors.

# 4. In the event that an error is raised, print the error message and the phase "Oh no, something went wrong!"

# 5. Returns the result.

require 'faker'

def take_name
  puts 'Give me a name '
  print '>> '
  begin
  input = gets.chomp.strip
  puts Faker::Name.name
  rescue StandardError => e
    puts 'Oh no, something went wrong'
end
end

take_name
