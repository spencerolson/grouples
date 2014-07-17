class Group < ActiveRecord::Base
  belongs_to :cohort
  has_many :student_groups
  has_many :students, through: :student_groups

  validates :cohort_id, :week_number, presence: true
end
