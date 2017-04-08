require 'rails_helper'
require 'devise'

RSpec.describe WelcomeController, type: :controller do

  describe "GET #welcome" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end
end
