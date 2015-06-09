require 'rails_helper'

RSpec.describe 'TwUsers', type: :request do
  describe 'GET /tw_users' do
    it 'works! (now write some real specs)' do
      get tw_users_path
      expect(response).to have_http_status(200)
    end
  end
end
