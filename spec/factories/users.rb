FactoryGirl.define do
  factory :user do
    name                  "john_doe"
    password              "secret"
    password_confirmation "secret"
  end
end
