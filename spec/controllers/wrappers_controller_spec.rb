require 'rails_helper'
require 'capybara/rspec'

RSpec.describe WrappersController, type: :controller do
  context 'GET wrappers controller views' do
    it 'should render wrappers#new template' do
      get :new
      expect(response).to be_successful
    end
  end
end

RSpec.describe 'Form Management', type: :feature do
  let(:wrapped_str) { Wrapper.wrap(4, 'This is a long sentence') }

  context 'when a user enters a string with a desired column size' do
    before(:each) do
      visit root_path
      fill_in 'col_size', with: 4
      fill_in 'input_str', with: 'This is a long sentence'
      click_button 'Wrap String'
    end

    it 'displays the result' do
      expect(page).to have_content 'Result'
    end

    it 'displays the result in on a different page' do
      expect(current_path).to eq('/wrappers')
    end

    it 'redirects to the root page when a user clicks "Back"' do
      click_on 'Back'
      expect(page).to have_content 'Word Wrap'
      expect(current_path).to eq('/')
    end
  end
end
