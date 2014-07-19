class GroupsController < ApplicationController

  skip_before_filter :verify_authenticity_token
  def sort
    current_group_members = params[:students].map{|student_id| Student.find(student_id)}
    puts "#{current_group_members.length} current group members"

    other_cohort_members = current_group_members.first.cohort.students.where("id not in (?)", params[:students])
    puts "#{other_cohort_members.length} other cohort members"

    other = {}
    other_cohort_members.each do |cohort_member|
      other[cohort_member] = cohort_member.times_grouped_with(current_group_members)
    end

    puts "-"*400
    other = other.sort_by{|student, times_grouped| times_grouped}
    
    other.each do |student, times_grouped|
      puts "#{student.name}: grouped #{times_grouped} times"
    end

    render json: other
  end

  def new
    @cohort = Cohort.includes(students: :photo).find(params[:cohort_id])
  end

  def create

  end
end
