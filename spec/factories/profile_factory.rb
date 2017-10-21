FactoryGirl.define do 
  factory :profile do
    first_name "Joe"
    last_name "Tebrieb"
    position "Associate Pup Pup"
    company "Petco"
    phone "555-555-5555"
    email "joetebrieb@bu.edu"
    contact_permissions "public"
    role "alum"
  end
end
