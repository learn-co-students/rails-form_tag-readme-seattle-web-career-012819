require 'rails_helper'

describe 'new post' do
  it 'ensures that the form route works with new action' do
    visit new_post_path
    expect(page.status_code).to eq(200)
  end

  it 'has the form render with the new action' do
    visit new_post_path
    expect(page).to have_content("Post Form")
  end
end
