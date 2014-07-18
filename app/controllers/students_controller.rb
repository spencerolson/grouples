class StudentsController < ApplicationController
  def show
    @student = Student.find(params[:id])
    @cohort_mates = @student.cohort_mates_sorted 
  end
end
