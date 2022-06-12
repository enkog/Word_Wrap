require 'rails_helper'
require 'capybara/rspec'

RSpec.describe WrappersController, type: :controller do
  context 'GET wrappers controller views' do
    before(:each) { get(:new) }

    it 'displays the homepage' do
      expect(response).to be_successful
    end
  end
end
