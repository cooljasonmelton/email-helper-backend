class User < ApplicationRecord
    has_many :templates 
    has_many :contacts
    has_many :tags, through: :contacts
end
