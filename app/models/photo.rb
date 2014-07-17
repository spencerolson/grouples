class Photo < ActiveRecord::Base
  belongs_to :imageable, polymorphic: true
  validates :photo_url, :imageable_id, :imageable_type, presence: true
end
