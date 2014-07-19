class GroupsController < ApplicationController

  skip_before_filter :verify_authenticity_token
  def sort
    current_group_members = params[:students].map{|student_id| Student.find(student_id)}

    other_cohort_members = current_group_members.first.cohort.students.where("id != ?", params[:students])

    puts other_cohort_members.length
    other = {}
    other_cohort_members.each do |cohort_member|
      other[cohort_member] = cohort_member.times_grouped_with(current_group_members)
    end

    render json: ["farts"]

  def new
    @cohort = Cohort.includes(students: :photo).find(params[:cohort_id])
  end

  def create

  end
end
