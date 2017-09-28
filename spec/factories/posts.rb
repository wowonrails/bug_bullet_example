FactoryGirl.define do
  factory :post do
    association :user, factory: :user, strategy: :build
    title "MyString"
    body "MyText"
  end
end
