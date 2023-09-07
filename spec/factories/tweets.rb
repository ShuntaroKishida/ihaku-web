FactoryBot.define do
  factory :tweet do
    text {'よろしく'}
    association :user
  end
end
