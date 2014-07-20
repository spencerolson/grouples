class StudentsController < ApplicationController
  
  def new
  	@cohort = Cohort.find(params[:cohort_id])
  	@student = Student.new
  end

  def create
  	@cohort = Cohort.find(params[:cohort_id])
  	@student = Student.new(student_params)
		if @student.save
			redirect_to new_cohort_student_photo_path(@cohort.id, @student.id)
		else
			render 'new'
		end
  end

  def show
    @student = Student.find(params[:id])
    @cohort_mates = @student.cohort_mates_sorted 
  end

  private
  def student_params
  	params.require(:student).permit(:cohort_id, :name)
  end
end
