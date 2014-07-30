# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :document do
    # type { Faker::Number.number(1) }
    url  { Faker::Internet.url }
    md5  "1bc29b36f623ba82aaf6724fd3b16718"
    password { Faker::Internet.password }
    title { Faker::Lorem.characters(20) }
    description { Faker::Lorem.paragraph }
    # access_type { Faker::Number.digit }
    file { Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, 'spec/factories/test_data/1.jpg'))) }

    association :user, factory: :user
  end
end
