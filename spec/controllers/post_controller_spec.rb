require 'rails_helper'
require 'devise'

RSpec.describe PostsController, type: :controller do
  context "user" do
    before do
      @user = FactoryGirl.create(:user, id: 1)
      sign_in :user, @user
    end

    describe "GET new" do
      it "returns http success" do
        get :new, {id: @user.id}
        expect(response).to have_http_status(:success)
      end
      it "renders the #new view" do
        get :new, {id: @user.id}
        expect(response).to render_template :new
      end
    end

    describe "POST create" do
      it "increases the number of posts by 1 for a user post" do
        expect{ post :create, id: @user.id, post: {title: "Tile mcTitle", body: "My Stringy String User"} }.to change(Post,:count).by(1)
      end
    end
  end
end
