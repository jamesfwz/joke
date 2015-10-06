require 'rails_helper'

describe OurJoke do
  describe 'validations' do
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :content }
  end

  describe 'associations' do 
    it { is_expected.to have_many :votes }
  end
end