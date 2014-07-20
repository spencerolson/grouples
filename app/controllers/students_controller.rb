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

  def edit
  	@cohort = Cohort.find(params[:cohort_id])
  	@student = Student.find(params[:id])
  end

  def update
  	@cohort = Cohort.find(params[:cohort_id])
  	@student = Student.find(params[:id])

  	if @student.update(student_params)
  		redirect_to cohort_path
  	else
  		render 'edit'
  	end
  end

  def destroy
  	@student = Student.find(params[:id])
  	@student.destroy
  end

  private
  def student_params
  	params.require(:student).permit(:cohort_id, :name)
  end
end
