FactoryGirl.define do
  factory :customer do |f|
    f.name Faker::Name.name
    f.email Faker::Internet.email
    f.password Faker::Name.name
    f.confirmed_at Time.now
  end
end
