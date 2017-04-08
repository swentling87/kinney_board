require 'rails_helper'
require 'devise'

RSpec.describe CommentsController, type: :controller do
  context "user" do
    before do
      @user = FactoryGirl.create(:user, id: 1)
      @post = FactoryGirl.create(:post, user: @user)
      sign_in :user, @user
    end

    describe "Comment create" do
      it "increases the number of comment by 1 for a post" do
        expect{ post :create, post_id: @post.id, comment: {title: "My Title", body: "My Stringy String User"} }.to change(Comment,:count).by(1)
      end
    end
  end
end
