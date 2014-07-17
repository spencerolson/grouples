class Cohort < ActiveRecord::Base
  has_many :students
  has_many :groups
  has_one :photo, as: :imageable

  validates :name, :email, uniqueness: true, presence: true
end
