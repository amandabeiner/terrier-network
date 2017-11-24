require "rails_helper"

RSpec.describe Profile, type: :model do
  it { should have_many(:friendships) }
  it { should have_many(:friends).through(:friendships) }
end
