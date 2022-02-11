FactoryBot.define do
  factory :user do
    name                  { '山田' }
    email                 { Faker::Internet.free_email }
    password              { Faker::Lorem.characters(number: 6, min_alpha: 1, min_numeric: 1) }
    password_confirmation { password }
    position              { 'check' }
  end
end
