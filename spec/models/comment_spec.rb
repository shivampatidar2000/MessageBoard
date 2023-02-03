require 'rails_helper'

RSpec.describe Comment, type: :model do
 
  describe 'message' do 
#   it {should belong_to(:user)}
  it {should belong_to(:message).class_name('Message')}
  it {should belong_to(:user).class_name('User')}

  end
end