# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#----------------------------Users-------------------------------------------#

#----------------------------Cohorts-------------------------------------------#
cohort = Cohort.create(name: "Coyotes", email: "coyotoes-2014@gmail.com")

#----------------------------Groups and students-------------------------------------------#
5.times do 
  group = Group.create(cohort_id: 1, week_number: 8)
  4.times{group.students.create(name: Faker::Name.name, cohort_id: 1)}
end

#----------------------------Photos-------------------------------------------#
20.times do |i|
  Photo.create(photo_url: "http://qph.is.quoracdn.net/main-thumb-1521659-200-tgktpwluxywlvuxswwhbxcczypyrftiy.jpeg", imageable_id: i+1, imageable_type: "Student")
end

Photo.create(photo_url: "https://avatars2.githubusercontent.com/u/6732201?s=140", imageable_id: 1, imageable_type: "Cohort")