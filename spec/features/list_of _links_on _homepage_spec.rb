
feature 'displays of links on homepage' do
  scenario 'link on homepage' do
    Bookmark.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')
    visit('/links')
    expect(page.status_code).to 200
    within 'ul#links' do
      expect(page).to have_content('Makers Academy')
    end
  end
end