class Student < ActiveRecord::Base
  belongs_to :cohort
  has_many :student_groups
  has_many :groups, through: :student_groups
  has_one :photo, as: :imageable

  validates :cohort_id, :name, presence: true

  def times_grouped_with(students)
    my_groups = self.groups
    grouped_with_count = 0

    students.each do |student|
      my_groups.each do |group|
        grouped_with_count +=1 if group.students.include?(student)
      end
    end
    grouped_with_count
  end

  def cohort_mates_sorted
    cohort_mates_arr = self.cohort.students.where("id != ?", self.id).order(:name)

    cohort_mates = {}
    cohort_mates_arr.each do |student|
      cohort_mates[student] = student.times_grouped_with(self)
    end
    cohort_mates = cohort_mates.sort_by{|key, value| value}
  end
end
