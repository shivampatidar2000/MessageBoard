require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'association' do        
 
    # it { should have_many(:messages).class_name('Message').with_foreign_key('message_id')}
    # it {should have_many(:messages).with_primary_key('message_id')}
    it { should have_many(:messages) }

    # it { should belong_to(:category).class_name('BxBlockCategories::Category').with_foreign_key('category_id') }
    # it { should belong_to(:account).class_name('AccountBlock::Account').with_foreign_key('account_id').optional }
  end

end
