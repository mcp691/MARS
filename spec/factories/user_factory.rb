FactoryBot.define do
  sequence(:email) { |n| "user#{n}@example.com" }

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
    admin true
    first_name "Admin"
    last_name "Testerson"
  end
end
