# gem stuff

# require 'redcarpet'
# require 'geocoder'
# require 'colorize'
# require 'httparty'

# require 'date'

# date = Date.today.year

# p date

# # markdown = markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)

# # html = markdown.render("This is *bongos*, indeed.")

# # p html

# # results = Geocoder.search("Melbourne, VIC")

# # p results[0]

# # puts "This is yellow".colorize(:yellow)

# # response = HTTParty.get('http://api.stackexchange.com/2.2/questions?site=stackoverflow')

# # p response.body

# # p JSON.parse(response.body)

# # error handling

# # begin and rescue

# def display_name_and_age(name, age)
#   puts name
#   puts age
# end 

# loop do
#   begin
#     puts "whats your name?"
#     print "> "
#     name = gets.chomp
#     puts "whats your age?"
#     print "> "
#     age = gets.chomp
#     if name == "" || age == ""
#       raise(NoMethodError)
#     else 
#       display_name_and_age(name, age)
#     end  
#   rescue => error_obj
#     p error_obj
#   end
# end 

# def coffee_counter
#   total_coffees = 0
#   loop do 
#     puts "coffee counter app"
#     puts "1. Add a coffee"
#     puts "2. Remove a coffee"
#     puts "3. Display coffees"
#     puts "4. Exit the program"
#     print "> "
#     user_selection = gets.chomp.to_i
#     case user_selection
#     when 0 
#       raise('you typed the wrong thing')
#     when 1 
#       total_coffees += 1
#     when 2 
#       total_coffees -= 1
#     when 3 
#       puts total_coffees
#     when 4
#       exit
#     end 
#   end 
# end

begin
  File.open('hello.txt')
rescue => error_object
  puts "sorry that file doesn't exist... choose another file"
end 