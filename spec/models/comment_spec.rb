require 'rails_helper'

RSpec.describe Comment, type: :model do

  before do
    @user = FactoryGirl.create(:user, id: 1)
    @post = FactoryGirl.create(:post, user: @user)
    @comment = FactoryGirl.create(:comment, user: @user, post: @post)
  end

    describe "attributes" do
      it "responds to body" do
        expect(@comment).to respond_to(:body)
      end
      it "responds to body" do
        expect(@comment).to respond_to(:title)
      end
    end

    describe "create comment" do
      it "should create a new comment" do
        expect(Comment.all).to_not be_nil
      end
      it "should show one post" do
        expect(Comment.count).to eq(1)
      end
    end
end
