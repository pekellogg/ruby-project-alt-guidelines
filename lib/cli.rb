
require 'pry'
class CommandLineInterface

    # greet user
    def greet
        puts 'Welcome to Cat Content Consortium!'
        puts "Login or create account? You should probably make an account if it's your first time here, you'll want to come back. Heh."
        
        # puts "Please select a title to view comments."
        # display_titles
    end
    
    # display titles to select from
    def display_titles
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
    def receive_input
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


# create_table :comments do |t|
#     t.date :date
#     t.string :text # chose string vs. text datatype due to 255 char limit
#     t.integer :user_id
#     t.integer :content_id
#   end
  
