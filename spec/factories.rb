require 'faker'

FactoryGirl.define do
  factory :user do
    sequence(:login) {|n| "login#{n}" }
    email { Faker::Internet.email }
    password 'Secret123'
    password_confirmation 'Secret123'
  end

  factory :infant do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    weight { 30.2 }
    postal_code { Faker::Address.postcode }
    gender { ["M","F","T"].sample }
    date_of_birth { 1.year.ago }
    due_date { 1.year.ago - 1.week }
    birth_weight { 6.7 }
    multiple_birth { ["S","T","M"].sample }
  end
end
