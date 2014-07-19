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
  end

  def new
    @cohort = Cohort.includes(students: :photo).find(params[:cohort_id])
  end



  def create
    # puts params[:array].class
    # puts params[:array]["0"]
    cohort = Cohort.find(params[:cohort_id])
    week = cohort.new_week

    params[:array].each do |key, value|
      if value.class == Array
        group = Group.create(cohort_id: params[:cohort_id], week_number: week)
        value.each do |id|
          group.students << Student.find(id)
          puts "this is the id" + "#{id} and the group is #{group}"
        end
      end
    end

    render json: ["farts"]
  end

end
