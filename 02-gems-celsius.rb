# frozen_string_literal: true

# 1. Define a method called temperature_colour

# 2. Call the method and pass it an argument that represents celsius as an integer

# 3. Write some control from logic that returns different strings

# a. If the celsius is lower than 10 puts it's freezing

# b. If the celsius is higher than 10 but lower than 30 puts it's pretty good 🤙

# c. If the celsius is higher than 30 puts it's boiling

# d. Use the colorize gem to make the different strings different colors: blue for "its freezing", yellow for "it's pretty good 🤙" and red for "its boiling"

# e. Move the method call into another file named app.rb, use require_relative to make this work
require 'colorize'
def temperature_color(celsius)
  if celsius < 10
    puts "it's freezing".colorize(:blue)
  elsif celsius > 10 && celsius < 30
    puts "it's pretty good".colorize(:yellow)
  elsif celsius > 30
    puts "it's boiling".colorize(:red)
  end
end

temperature_color(70)
temperature_color(0)
temperature_color(22)
