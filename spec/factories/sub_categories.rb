# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :sub_category do
    name "MyString"
    category_id 1
    description "MyString"
  end
end
