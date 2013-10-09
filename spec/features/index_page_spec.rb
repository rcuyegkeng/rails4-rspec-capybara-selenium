require 'spec_helper'

describe 'home page' do
  it 'list products' do
    visit '/'
    page.should have_content('Listing products')
  end

  it 'should put Hello World! at the bottom of the page with javascript', js:true do
    visit '/'
    footer = find('#footer')
    #sleep(60)
    footer.should have_content('Hello World!')
  end
end
