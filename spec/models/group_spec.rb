require_relative '../spec_helper'
#should be require rails_helper

RSpec.describe Group, :type => :model do
	it { should respond_to(:cohort_id) }
	it { should respond_to(:week_number) }

  it { should validate_presence_of(:cohort_id) }
  it { should validate_presence_of(:week_number) }

  it { should have_many(:student_groups) }
  it { should have_many(:students).through(:student_groups) }
  it { should belong_to(:cohort) }
end
