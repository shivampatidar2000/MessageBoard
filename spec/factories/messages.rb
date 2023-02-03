FactoryBot.define do
 
    factory :message, class: 'Message' do 
     title {Faker::Name.name}
     description {Faker::Name.name}
     user_id {FactoryBot.create(:user).id}
    end
end