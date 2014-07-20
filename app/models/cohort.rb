class Cohort < ActiveRecord::Base
  has_many :students
  has_many :groups
  has_one :photo, as: :imageable, dependent: :destroy

  validates :name, :email, uniqueness: true, presence: true


  def new_week
    current_week = self.groups.order(:week_number).last.week_number
    if current_week
      current_week + 1
    else
      1
    end
  end
end
