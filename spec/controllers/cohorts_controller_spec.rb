require_relative '../spec_helper'

RSpec.describe CohortsController, :type => :controller do

  context 'on individual cohort page' do
    it "should return a 200 status code" do
      cohort = Cohort.find(1)
      get :show, :id => cohort.id
      response.status.should be(200)
    end
  end

  context 'on cohort list page' do
    it "should return a 200 status code" do
      get :index
      response.status.should be (200)
    end
  end

end
