# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :order_detail do
    number 1
    product nil
    order nil
  end
end
