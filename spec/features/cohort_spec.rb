require '../spec_helper'

feature 'Instructor browsing the cohort page' do
  context 'on cohort page' do
    it 'sees a list of cohorts' do
      visits cohorts_index_path
      cohort = Cohort.find(1)
      click_link  "Coyotes"
      expect(current_path).to eq(cohort_path(cohort))
    end
  end
end
