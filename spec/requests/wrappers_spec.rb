require 'rails_helper'

RSpec.describe 'Wrappers', type: :request do
  describe 'GET /new' do
    it 'returns http success' do
      get '/wrappers/new'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /create' do
    it 'returns http success' do
      get '/wrappers/create'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /show' do
    it 'returns http success' do
      get '/wrappers/show'
      expect(response).to have_http_status(:success)
    end
  end
end
