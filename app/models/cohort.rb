class Cohort < ActiveRecord::Base
  has_many :students
  has_many :groups
  has_one :photo, as: :imageable, dependent: :destroy

  validates :name, :email, uniqueness: true, presence: true


  def new_week
    current_week = self.groups.order(:week_number).last
    if current_week
      current_week.week_number + 1
    else
      1
    end
  end
end
