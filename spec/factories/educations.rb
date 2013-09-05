# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :education do
    title "MyString"
    start_year 1
    end_year 1
    level "MyString"
    remarks "MyText"
  end
end
