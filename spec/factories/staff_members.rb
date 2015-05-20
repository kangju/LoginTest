FactoryGirl.define do
   factory :staff_member do
      sequence(:email) { |n| "member#{n}@test.com" }
      family_name '新田辺'
      given_name '明太郎'
      family_name_kana 'シンタナベ'
      given_name_kana 'アキタロウ'
      password 'pw'
      start_date { Date.yesterday }
      end_date nil
      suspended false
   end
end