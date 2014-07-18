class CohortsController < ApplicationController

  def index
  end

  def show
    @cohort = Cohort.includes(students: :photo).find(params[:id])
  end

end
