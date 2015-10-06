class Vote < ActiveRecord::Base
  belongs_to :our_joke

  validates :session_code,  presence: true
  validates :our_joke_id,   presence: true, uniqueness: { scope: :session_code,
                                                          message: "You cannot vote 2 times." }
end