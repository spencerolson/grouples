class PhotosController < ApplicationController
	
	def new
		@cohort = Cohort.find(params[:cohort_id])
		@photo = Photo.new
	end

	def create
		@cohort = Cohort.find(params[:cohort_id])
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
