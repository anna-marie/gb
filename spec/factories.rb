FactoryGirl.define do
  factory :user do
    sequence(:name)  { |n| "Person #{n}" }
    sequence(:email) { |n| "person_#{n}@example.com"}
    password "foobar"
    password_confirmation "foobar"

    factory :admin do
      admin true
    end

    factory :superadmin do
      superadmin true
    end
  end

  factory :plant do
    common_name "Whatever"
    sci_name "Lorem ipsum"
    user
  end
end