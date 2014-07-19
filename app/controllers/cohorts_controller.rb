class CohortsController < ApplicationController

  def index
    @cohorts = Cohort.all
  end

  def new
  	@cohort = Cohort.new
  end

  def create
  	@cohort = Cohort.new(cohort_params)
		if @cohort.save
			redirect_to new_cohort_photo_path(@cohort.id)
		else
			render 'new'
		end
  end

  def show
    @cohort = Cohort.includes(students: :photo).find(params[:id])
  end

  private
  def cohort_params
  	params.require(:cohort).permit(:name, :email)
  end
end