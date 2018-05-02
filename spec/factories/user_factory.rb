FactoryBot.define do
  sequence(:email) { |n| "user#{n}@test.com" }

  factory :user do
    email
    password "testtest"
    first_name "Testy"
    last_name "Testerson"
    admin false
  end

  factory :admin, class: User do
    email
    password "testtest"
    first_name "Admin"
    last_name "Testerson"
    admin true
  end
end
