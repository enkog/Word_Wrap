require 'rails_helper'
require 'capybara/rspec'

RSpec.describe Wrapper, type: :model do
  it 'tests long line splits on whitespace' do
    wrapped_str = Wrapper.wrap(2, 'This is a long sentence')
    expect(wrapped_str).to eq('This<br>is<br>a<br>long<br>sentence')
  end

  it 'tests long line with multiple whitespaces' do
    wrapped_str = Wrapper.wrap(2, 'This is      a long sentence')
    expect(wrapped_str).to eq('This<br>is<br>a<br>long<br>sentence')
  end

  it 'tests preceeding whitespace is preserved' do
    wrapped_str = Wrapper.wrap(4, ' he')
    expect(wrapped_str).to eq(' he')
  end

  it 'tests null input' do
    wrapped_str = Wrapper.wrap(4, '')
    expect(wrapped_str).to eq('')
  end

end
