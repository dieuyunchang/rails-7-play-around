require 'rails_helper'

RSpec.describe Post, type: :model do
  context "validations" do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:content) }

    it "is valid with valid attributes" do
      expect(Post.new).to_not be_valid
    end

    it "is valid with valid attributes" do
      expect(Post.new(title: "Title A")).to_not be_valid
    end

    it "is valid with valid attributes" do
      expect(Post.new(content: "This is content A")).to_not be_valid
    end

    it "is valid with valid attributes" do
      expect(Post.new(title: "This is the post title", content: "This is text content")).to be_valid
    end
  end
end
