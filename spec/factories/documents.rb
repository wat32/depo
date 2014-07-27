# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :document do
    type 1
    url "MyString"
    md5 "MyString"
    password "MyString"
    title "MyString"
    description "MyString"
    access_type 1
    user nil
  end
end
