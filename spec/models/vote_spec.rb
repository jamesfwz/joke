require 'rails_helper'

describe Vote do
  describe 'validations' do
    it { is_expected.to validate_presence_of :session_code }
    it { is_expected.to validate_presence_of :our_joke_id }
    it { is_expected.to validate_presence_of :like }
  end
end