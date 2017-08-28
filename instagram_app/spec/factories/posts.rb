FactoryGirl.define do
  factory :post do
    # user { create(:user)}
    image File.new(File.join(Rails.root, 'spec', 'fixtures', 'files', 'testing_1.jpg'))
    sequence :description do |n|
      "Post number #{n}"
    end
  end
end
