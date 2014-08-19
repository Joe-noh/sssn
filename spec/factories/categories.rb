# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :category do
    user_id 1
    name "MyString"
    io 1
    description "MyString"
  end
end
