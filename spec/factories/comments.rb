FactoryGirl.define do
  factory :comment do
    title "My Title"
    body "My Stringy string string string"
    user nil
    post nil
    created_at Time.now
  end
end
