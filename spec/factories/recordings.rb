# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :recording do
    user_id 1
    category_id 1
    amount 1
    io 1
    payday "2014-08-20"
  end
end
