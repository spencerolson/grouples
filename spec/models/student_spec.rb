require_relative '../spec_helper'

RSpec.describe Student, :type => :model do
  it { should validate_presence_of(:cohort_id) }
  it { should validate_presence_of(:name) }

  it { should have_many(:student_groups) }
  it { should have_many(:groups) }
  it { should have_one(:photo) }
  it { should belong_to(:cohort) }
end
