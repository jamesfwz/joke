require 'rails_helper'

describe OurJoke do
  describe 'validations' do
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :content }
  end

  describe 'associations' do 
    it { is_expected.to have_many :votes }
  end

  describe '#next' do
    let!(:jokes)     { create_list(:our_joke, 2) }

    it 'should get the next joke' do
      expect(jokes.first.next).to match jokes.second
      expect(jokes.second.next).to be nil
    end
  end
end