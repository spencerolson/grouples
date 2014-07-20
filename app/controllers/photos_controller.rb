class PhotosController < ApplicationController
	
	def new
		if params[:student_id]
			@student = Student.find(params[:student_id])
		else
			@cohort = Cohort.find(params[:cohort_id])
		end
		@photo = Photo.new
	end

	def create
		if params[:student_id]
			@student = Student.find(params[:student_id])
		else
			@cohort = Cohort.find(params[:cohort_id])
		end
  	@photo = Photo.new(photo_params)
		if @photo.save
			redirect_to cohort_path(@cohort.id)
		else
			render 'new'
		end
  end

  private
  def photo_params
  	params.require(:photo).permit(:photo_url, :imageable_id, :imageable_type)
  end
end
