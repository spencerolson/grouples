require_relative '../spec_helper'
#should be require rails_helper

RSpec.describe User, :type => :model do
	it { should respond_to(:email) }
	it { should respond_to(:password_digest) }

  it { should validate_presence_of(:email) }
  it { should validate_uniqueness_of(:email) }
  it { should validate_presence_of(:password_digest) }
  it { should have_one(:photo) }

end
