# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :experience do
    name "MyString"
    title "MyString"
    start_year 1
    end_year 1
    remarks "MyText"
  end
end
