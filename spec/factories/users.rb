FactoryGirl.define do
  factory :user do
    sequence :email do |n|
      "email#{n}@website.lol"
    end
    care_type 'cancer'
    care_sub_type 'colorectal'
  end
end
