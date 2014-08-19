# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    name "john_doe"

    crypted_password  "aaa"
    password_salt     "bbb"
    persistence_token "ddd"
  end
end
