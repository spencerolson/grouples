class GroupsController < ApplicationController

  skip_before_filter :verify_authenticity_token
  def sort
    current_group_members = params[:group].map{|student_id| Student.find(student_id)}
    puts "#{current_group_members.length} current group members"

    other_cohort_members = params[:other_members].map{|student_id| Student.find(student_id)}

    other = {}
    other_cohort_members.each do |cohort_member|
      other[cohort_member] = cohort_member.times_grouped_with(current_group_members)
    end

    puts "-"*400
    other = other.sort_by{|student, times_grouped| times_grouped}
    @students = []

    other.each do |student, times_grouped|
      puts "#{student.name}: grouped #{times_grouped} times"
      @students << student
    end
    puts "#{other_cohort_members.length} other cohort members"


    respond_to do |format|
      format.html { render :partial => "remaining_students_list" }
    end
  end

  def new
    @cohort = Cohort.includes(students: :photo).find(params[:cohort_id])
    @students = @cohort.students
  end

  def create
    # puts params[:array].class
    # puts params[:array]["0"]
    params[:array].each do |key, value|
      if value.class == Array
        group = Group.create(cohort_id: params[:cohort_id], week_number: 7)
        value.each do |id|
          group.students << Student.find(id)
          puts "this is the id" + "#{id} and the group is #{group}"
        end
      end
    end

    render json: ["farts"]
  end

end
