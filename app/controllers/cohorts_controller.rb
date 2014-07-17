class CohortsController < ApplicationController

  def index
  end

  def show
    @cohort = Cohort.find(params[:id])
  end

  def poop
  end

end
