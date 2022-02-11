FactoryBot.define do
  factory :count do
    date     { '2022-02-01' }
    prepared_number { '50' }
    handed_number   { '40' }
    unused          { '10' }
    association :user
  end
end