FactoryGirl.define do
  factory :support_request do |f|
    f.request_type 'No Network Connection'
    f.status 'New'
  end
end
