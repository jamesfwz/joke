class OurJoke < ActiveRecord::Base
  has_many :votes
  
  validates :title,   presence: true
  validates :content, presence: true
end