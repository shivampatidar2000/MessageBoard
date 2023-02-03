require 'rails_helper'

RSpec.describe Message, type: :model do
 
  describe 'message' do 
  it {should belong_to(:user)}
  it {should have_many(:comment) class_name('Comment')}

  end
end
