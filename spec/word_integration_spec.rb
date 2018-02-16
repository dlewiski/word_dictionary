require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word defintion path', {:word => :definition}) do
  it('collects the word and definition and displays it') do
    visit('/output')
    fill_in('word', :with => 'Jimichanga')
    fill_in('definition', :with => 'Just like a chimichanga but better!')
    click_button('Add Word')
    expect(page).to have_content("Jimichanga")
  end
end
