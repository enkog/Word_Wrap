require 'rails_helper'
require 'capybara/rspec'

RSpec.describe WrappersController, type: :controller do
  context 'GET wrappers controller views' do
    before(:each) do
      @wrapped_str = Wrapper.new(col_size: 4, input_str: 'This is a long sentence')
    end
  end

  describe 'GET wrappers#new' do
    it 'should render wrappers#new template' do
      get :new
      expect(response).to be_successful
    end
  end
end
