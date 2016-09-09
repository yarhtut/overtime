require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'Createion' do
    before do
      @post = Post.create(date: Date.today, rationale: 'anything')

    end
    it 'can be created' do
      expect(@post).to be_valid
    end

    it 'can not be created without date and rational' do
      @post.date = nil
      @post.rationale =nil
      expect(@post).to_not be_valid
    end
  end
end
