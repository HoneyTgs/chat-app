FactoryBot.define do
  factory :message do
    content {Faker::Lorem.sentence}
    association :user
    association :room

    after(:build) do |message|
      message.image.attach(io: FIle.open('public/images/test_image.png'), filename: 'test_image.png')
    end  
  end
end