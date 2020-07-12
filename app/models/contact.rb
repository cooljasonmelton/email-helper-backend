class Contact < ApplicationRecord
  belongs_to :user
  has_many :contact_tags
  has_many :tags, through: :conact_tags
end
