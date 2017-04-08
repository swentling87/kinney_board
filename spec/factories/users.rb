FactoryGirl.define do
  factory :user do
    email "user@email.com"
    first_name "user"
    last_name "McUserface"
    password "helloworld"
    password_confirmation "helloworld"
  end
end
