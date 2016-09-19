FactoryGirl.define do
  factory :support_agent do |f|
    f.name Faker::Name.name
    f.email Faker::Internet.email
    f.employee_number Faker::Number.number(8)
    f.password Faker::Name.name
    f.confirmed_at Time.now
  end
end
