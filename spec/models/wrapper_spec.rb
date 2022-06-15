require 'rails_helper'
require 'capybara/rspec'

RSpec.describe Wrapper, type: :model do
  it 'returns an empty string for null input' do
    expect(Wrapper.wrap(2, '')).to eq('')
  end

  it 'returns a string less than column size' do
    expect(Wrapper.wrap(12, 'hello')).to eq('hello')
  end

  it 'splits long line on whitespace' do 
    expect(Wrapper.wrap(2, 'This is a long sentence')).to eq('This<br>is<br>a<br>long<br>sentence')
  end

  it 'wraps at the space between multiple words' do 
    expect(Wrapper.wrap(6, 'ruby ruby ruby')).to eq('ruby<br>ruby<br>ruby')
  end

  it 'wraps at the second space' do 
    expect(Wrapper.wrap(11, 'ruby ruby ruby')).to eq('ruby ruby<br>ruby')
  end

  it 'wraps long line with multiple whitespaces' do
    expect(Wrapper.wrap(2, 'This is      a long sentence')).to eq('This<br>is<br>a<br>long<br>sentence')
  end

  it 'preserves preceeding whitespace is' do
    expect(Wrapper.wrap(4, ' he')).to eq(' he')
  end
end
