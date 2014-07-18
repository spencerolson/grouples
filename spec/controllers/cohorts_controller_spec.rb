require 'rails_helper'
#should be require rails_helper

RSpec.describe CohortsController, :type => :controller do

  context 'on individual cohort page' do
    xit "should return a 200 status code" do
      session[:user_id] = 1

      cohort = Cohort.find(1)
      get :show, :id => cohort.id
      response.status.should be(200)
    end
  end

  context 'on cohort list page' do
    xit "should return a 200 status code" do
      get :index
      response.status.should be (200)
    end
  end

end
