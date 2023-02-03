# require 'spec_helper'
require 'rails_helper'

RSpec.describe CommentsController, type: :controller do

  before(:each) do
    @user = FactoryBot.create(:user)
    @message = FactoryBot.create(:message)
    @comment = FactoryBot.create(:comment)

  end

  # describe "index"   do
  #   it 'index message' do 
  #     get 'index'
  #     expect(response.status).to eq 200
  #   end
  # end
   
  describe "create" do 
    it 'create comment' do
      post 'create', params:{content:"This is good",message_id:@message.id,user_id:@user.id}
      expect(response.status).to eq 302
    end
  end

  describe "update" do 
    it ' update comment' do 
       put 'update', params: {id: @comment.id, message_id: @message.user_id}
        expect(response.status).to eq 302
    end
  end

  describe "show" do
    it "show the comment" do 
      get 'show', params: {id: @comment.id, message_id: @message.user_id}
      expect(response.status).to eq 302
    end
  end

  describe "Delete" do
    it "delete the comment" do 
      delete 'destroy', params: {id: @comment.id, message_id: @message.user_id}
      expect(response.status).to eq 302
    end
  end
end

   