require 'rails_helper'

describe OurJokesController do 
  describe '#vote' do 
    def do_request
      get :vote, id: our_joke.id, like: 'true'
    end

    let!(:our_joke)    { create(:our_joke) }

    context 'success' do
      it 'allows user to vote a joke' do
        expect { do_request }.to change(Vote, :count).by(1)
      end
    end
  end
end