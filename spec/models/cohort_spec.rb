require 'rails_helper'
#should be require rails_helper

RSpec.describe Cohort, :type => :model do
		it { should respond_to(:name) }
		it { should respond_to(:email) }

    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:name) }
    it { should validate_uniqueness_of(:email) }

    it { should have_many(:students) }
    it { should have_many(:groups) }
    it { should have_one(:photo) }
end


