require "rails_helper"

describe Post do
  let!(:user) { create :user }

  context "raise error" do
    it "expect to create" do
      post = Post.new(title: "MyString", body: "MyText")

      expect_not_to_get_errors(post)
    end

    it "expect to create through references" do
      post = user.posts.new(title: "MyString", body: "MyText")

      expect_not_to_get_errors(post)
    end
  end

  def expect_not_to_get_errors(post)
    expect {
      post.save
    }.not_to raise_error(ArgumentError, "wrong number of arguments (given 1, expected 0)")
  end
end
