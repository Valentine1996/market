# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :merchant do
    name "MyString"
    discount 1
    address nil
  end
end
