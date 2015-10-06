class OurJoke < ActiveRecord::Base
  has_many :votes
  
  validates :title,   presence: true
  validates :content, presence: true

  def next
    OurJoke.where("id > ?", id).first
  end
end