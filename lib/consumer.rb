class Consumer < ActiveRecord::Base
    has_many :comments # plural
    has_many :contents, through: :comments # plural
end