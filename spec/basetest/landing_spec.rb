require 'spec_helper'
require 'searchterms'

describe 'Country Search' do
    it 'should go to google and search country ' do
        visit "https://www.google.com"
        ranSearch = rand(4)
        fill_in "q", with: $searchTerm[ranSearch]
        find_field("q").send_keys :enter
        expect(page).to have_text $searchTerm[ranSearch] #bad test as it could just be on the search bar
        #The dollar sign says this variable is from another file. See searchterms.rb
    end
end
