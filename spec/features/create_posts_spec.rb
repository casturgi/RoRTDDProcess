require 'rails_helper.rb'

# visit root route


feature 'Creating Posts' do
	scenario 'can create job' do
	# visit root route
	visit '/'
	# click create post link
	click_link 'Create Post'
	# fill in the form with the needed information 
	fill_in 'Title', with: 'title'
	fill_in 'Caption', with: 'caption'
	# click submit button
	click_button 'Create Post'
	# Expect the page to have the content that we submitted
	expect(page).to have_content('title')
	expect(page).to have_content('caption')
	end
end