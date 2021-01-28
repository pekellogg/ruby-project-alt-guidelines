class Content < ActiveRecord::Base
    has_many :comments # plural
    has_many :consumers, through: :comments # plural
end