require "rails_helper"

RSpec.describe Profile, type: :model do
  it { should have_valid(:first_name).when("Joe", "Anne", "Mike", "Eben") }
  it { should_not have_valid(:first_name).when(nil) }

  it { should have_valid(:last_name).when("Williams", "Powell-Newman") }
  it { should_not have_valid(:last_name).when(nil) }

  it { should have_valid(:email).when("beiner@bu.edu") }
  it { should_not have_valid(:email).when(nil, "beiner@bc.edu") }

  it { should have_valid(:role).when("alum", "student") }
  it { should_not have_valid(:role).when(nil, "cat") }

  it { should have_valid(:contact_permissions).when("public", "private") }
  it { should_not have_valid(:contact_permissions).when(nil, "semi-private") }
  end
