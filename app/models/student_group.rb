class StudentGroup < ActiveRecord::Base
  belongs_to :group
  belongs_to :student

  validates :group_id, :student_id, presence: true
end
