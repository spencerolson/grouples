class CohortsController < ApplicationController

  def index
    @cohorts = Cohort.all
  end

  def show
    @cohort = Cohort.includes(students: :photo).find(params[:id])
  end

end
