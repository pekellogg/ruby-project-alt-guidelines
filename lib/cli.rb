# Olive Yew
# Consumer.create(:user_id == @@user_id)
require 'pry'
class CommandLineInterface

    @@user_id = ""

    # greet user, login, create account if new
    def greet
        puts 'Welcome to Cat Content Consortium!'
        puts "Type your name to get started."
        input = gets.chomp
        Consumer.all.each do |consumers|
            if consumers.name == input
                @@user_id = consumers.id
                puts "Looks like this ain't your first rodeo!"
                puts
                display_titles
            end
        end
        Consumer.create(:name == input)
        display_titles
        # puts "Please select a title to view comments."
        # display_titles
    end
    
    # display titles to select from
    def display_titles(user_id)
        Content.all.each do |content|
            puts "Title: #{content.title}"
            puts "Rated #{content.rating}/10 by Other Users"
            puts "Uploaded on #{content.date}"
            puts
            puts "---------------------------"
        end
        receive_input
    end

    # get user input and return comments
    def receive_input(user_id)
        input = gets.chomp
        if input
            fetch_comments(input)
        end
    end

    def fetch_comments(input)
        # get content.id with content title
        Content.all.select do |content|
            if content.title == input
                Comment.all.map do |comments|
                    if comments.content_id == content.id
                        puts comments.text
                        puts
                        puts
                    end
                end
            end
        end
        make_comment
    end

    def make_comment
        puts "Would you like to comment?"
        puts "Type Y for Yes or N for No"
        input = gets.chomp
        case
        when
            input == "Y"
            puts "Type message!"
            input2 = gets.chomp
                Comment.create(:text == input2)
        when
            input == "N"
            display_titles
        end
    end

end
  
