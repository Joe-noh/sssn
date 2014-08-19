# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    name     "john_doe"
    password "secret"
    password_confirmation "secret"
  end
end
