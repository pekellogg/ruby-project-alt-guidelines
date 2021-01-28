class Comment < ActiveRecord::Base
    belongs_to :consumer # singular 
    belongs_to :content # singular
end