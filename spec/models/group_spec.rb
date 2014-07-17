require_relative '../spec_helper'

RSpec.describe Group, :type => :model do
  it { should validate_presence_of(:cohort_id) }
  it { should validate_presence_of(:week_number) }

  it { should have_many(:student_groups) }
  it { should have_many(:students) }
  it { should belong_to(:cohort) }
end
