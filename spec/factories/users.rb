FactoryBot.define do
    factory :user, class: 'User' do 
        email {Faker::Internet.free_email}
        password {Faker::Internet.password}
        # password_confirmation {Faker::Internet.password}
    end
end
