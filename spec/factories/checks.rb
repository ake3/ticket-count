FactoryBot.define do
  factory :check do
    arrival     { '100' }
    association :user
  end
end