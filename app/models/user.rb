class User < ApplicationRecord
    has_many :templates 
    has_many :contacts
    has_many :tags, through: :contacts
    validates :email, uniqueness: true
    validates :email, presence: true
    validates :password_digest, presence: true
end
