require_relative '../spec_helper'

RSpec.describe StudentGroup, :type => :model do
  it { should validate_presence_of(:group_id) }
  it { should validate_presence_of(:student_id) }

  it { should belong_to(:group) }
  it { should belong_to(:student) }
end
