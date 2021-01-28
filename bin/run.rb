require_relative '../config/environment'

# greet user and collect input
def greet_user
    puts 'Welcome to Media Commenter!'
    puts "What kind of cat content are you looking for today?"
    
    # get cat category from user input
    input = gets.chomp
    content = fetch_categories(input)
    
    content.each do |content|
        puts 
    end



    # binding.pry
end
  
greet_user
