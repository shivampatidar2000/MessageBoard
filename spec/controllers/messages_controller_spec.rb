# require 'spec_helper'
require 'rails_helper'

RSpec.describe MessagesController, type: :controller do
	
    before(:each) do
        @user = FactoryBot.create(:user)
        # test_sign_in(@user)
        # @user = test_sign_in(FactoryBot(:user))
        @message = FactoryBot.create(:message)
        # user_id {FactoryBot.create(:user).id}
    end
   
    describe "index"   do
      it 'index message' do 
        get 'index'
        expect(response.status).to eq 200
      end
  end

  describe "show" do
    it ' show all message' do 
      get 'show',params: {id: @message.id}
      expect(response.status).to eq 200
    end
  end
  describe "create" do
    it ' create message' do 
      post 'create', params: {title: "Title", description: "Ram is the god",user_id: @user.id}
        expect(response.status).to eq 302
     end
  end

  describe "update" do 
    it ' update message' do 
       put 'update', params: {id: @message.id}
        expect(response.status).to eq 302
    end
  end


  describe "deletw" do
    it ' delete all message' do 
      delete 'destroy',params: {id: @message.id}
      expect(response.status).to eq 302
    end
  end
  
end