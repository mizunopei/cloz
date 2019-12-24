FactoryBot.define do
  factory :user do
    name                  {"name"}
    email                 {"abc@gmail.com"}
    password              {"abcd1234"}
    password_confirmation {"abcd1234"}
  end
end