require_relative '../spec_helper'
#should be require rails_helper

RSpec.describe Photo, :type => :model do
  it { should validate_presence_of(:photo_url) }
  it { should validate_presence_of(:imageable_id) }
  it { should validate_presence_of(:imageable_type) }

  it { should belong_to(:imageable) }
end
