# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :order do
    orderdate "2014-12-13"
    performance 1
    customer nil
  end
end
