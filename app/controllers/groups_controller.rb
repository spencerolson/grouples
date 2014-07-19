class GroupsController < ApplicationController
  def new
    @cohort = Cohort.includes(students: :photo).find(params[:cohort_id])
  end

  def create
  end
end
