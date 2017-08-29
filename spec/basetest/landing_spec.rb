require 'spec_helper'

describe 'Country Search' do
    it 'should go to google and search country ' do
        visit "https://www.google.com"
        fill_in "q", with:"Country"
        find_field("q").send_keys :enter
        expect(page).to have_text "United States"
    end
end
