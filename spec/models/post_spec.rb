require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
    @user = FactoryGirl.create(:user, id: 1)
    @post = FactoryGirl.create(:post, user: @user)
  end
  describe "create post" do
    it "should create a new post" do
      expect(Post.all).to_not be_nil
    end
    it "should show one post" do
      expect(Post.count).to eq(1)
    end
  end

  describe "attributes" do
    it "responds to title" do
      expect(@post).to respond_to(:title)
    end

    it "responds to body" do
      expect(@post).to respond_to(:body)
    end
  end
 end
