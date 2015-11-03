feature 'add links' do
  scenario 'submits a new link' do
    visit('/links')
    click_button 'Add link'
    fill_in :url, with: 'http://www.ruby-lang.org/'
    fill_in :title, with: 'Ruby home page'
    click_button 'Submit'
    expect(page).to have_content 'Ruby home page'
  end
end
