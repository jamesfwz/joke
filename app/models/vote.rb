class Vote < ActiveRecord::Base
  validates :session_code,  presence: true
  validates :our_joke_id,   presence: true
  validates :like,          presence: true
end