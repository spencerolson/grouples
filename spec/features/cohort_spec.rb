require_relative '../spec_helper'
system('clear')
feature 'Instructor browsing the cohort page' do
  context 'on cohort list page' do
    xit 'sees a list of cohorts' do
      visit cohorts_path
      cohort = Cohort.find(1)
      # save_and_open_page
      click_link "1"
      expect(current_path).to eq(cohort_path(cohort))
    end
  end

  context 'on individual cohort page' do

    xit "should return a 200 status code" do
      expect(response.status).to eq(200)
    end

    xit 'sees a list of students' do
      cohort = Cohort.find(1)
      visit cohort_path(cohort)
      # save_and_open_page
      page.should have_selector("img[src$='http://qph.is.quoracdn.net/main-thumb-1521659-200-tgktpwluxywlvuxswwhbxcczypyrftiy.jpeg']")
    end
  end
end
