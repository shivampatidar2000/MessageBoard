FactoryBot.define do
    factory :comment, class: 'Comment' do 
     content {Faker::Name.name}
     message_id {FactoryBot.create(:message).id}
     user_id {FactoryBot.create(:user).id}
    end
end