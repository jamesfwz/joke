require 'rails_helper'

describe HomeController do 
  describe '#index' do 
    def do_request
      get :index
    end

    let!(:our_joke) { create(:our_joke) }

    it 'assign first joke and render view :index' do 
      do_request
      expect(assigns(:first_joke)).to match our_joke
      expect(response).to render_template :index
    end
  end
end