require 'rails_helper'

describe UsersController, type: :controller do
  #let(:user) { User.create!(email: "test@test.com", password: "12345678") }
  before do
    @user = FactoryBot.create(:user)
    @user2 = FactoryBot.create(:user)
  end

  describe 'GET #show' do
    context 'when a user is logged in' do
      before(:each) do
        @request.env["devise.mapping"] = Devise.mappings[:user]
        # user = User.create!(:user)
        @user.confirm! # or set a confirmed_at inside the factory. Only necessary if you are using the "confirmable" module
        sign_in user
      end
    end

  end
end
