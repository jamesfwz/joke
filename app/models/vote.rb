class Vote < ActiveRecord::Base
  belongs_to :our_joke

  validates :session_code,  presence: true
  validates :our_joke_id,   presence: true
  validates :like,          presence: true
end