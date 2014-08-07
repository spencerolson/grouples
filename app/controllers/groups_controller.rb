class GroupsController < ApplicationController

  skip_before_filter :verify_authenticity_token

  def index
    puts "index called"
    @cohort = Cohort.find(params[:cohort_id])
  end
  def sort
    current_group_members = params[:group].map{|student_id| Student.find(student_id)}
    puts "#{current_group_members.length} current group members"

    other_cohort_members = params[:other_members].map{|student_id| Student.find(student_id)}

    other = {}
    other_cohort_members.each do |cohort_member|
      other[cohort_member] = cohort_member.times_grouped_with(current_group_members)
    end

    other = other.sort_by{|student, times_grouped| times_grouped}
    @students = []

    other.each do |student, times_grouped|
      @students << student
    end


    respond_to do |format|
      format.html { render :partial => "remaining_students_list" }
    end
  end

  def new
    @cohort = Cohort.includes(students: :photo).find(params[:cohort_id])
    @students = @cohort.students
  end

  def create
    @cohort =  Cohort.find(params[:cohort_id])
    week = @cohort.new_week
    params[:array].each do |key, value|
      if value.class == Array
        group = Group.create(cohort_id: params[:cohort_id], week_number: week)
        value.each do |id|
          group.students << Student.find(id)
        end
      end
    end
    redirect_to "/cohorts/#{@cohort.id}/groups"
  end

end
