require 'rails_helper'

feature 'Likes' do
  context 'signed in user' do
    before do
      post = Post.create(title: 'Funny', body: 'The most funny post in history')
      post.comments.create(content: 'I like funny posts a so much')
      visit '/'
      sign_up
    end

    scenario 'is able to like a post' do
      visit '/posts'
      click_link 'Like'
      expect(page).to have_content '1 like'
    end
  end
end