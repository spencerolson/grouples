# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#----------------------------Users-------------------------------------------#

#----------------------------Cohorts-------------------------------------------#
Cohort.create(name: "Coyotes", email: "coyotoes-2014@gmail.com")
Cohort.create(name: "Bobolinks", email: "bobolinks-2014@gmail.com")

#----------------------------Groups and students-------------------------------------------#
5.times do
  group = Group.create(cohort_id: 1, week_number: 8)
  4.times{group.students.create(name: Faker::Name.name, cohort_id: 1)}

end
5.times do
  shuffled_students = Cohort.first.students.shuffle

  5.times do
    group = Group.create(cohort_id: 1, week_number: 9)
    4.times{group.students << shuffled_students.pop}
  end
end


#----------------------------Photos-------------------------------------------#
20.times do |i|
  Photo.create(photo_url: "http://qph.is.quoracdn.net/main-thumb-1521659-200-tgktpwluxywlvuxswwhbxcczypyrftiy.jpeg", imageable_id: i+1, imageable_type: "Student")

end

Photo.create(photo_url: "https://avatars2.githubusercontent.com/u/6732201?s=140", imageable_id: 1, imageable_type: "Cohort")

5.times do
  group = Group.create(cohort_id: 2, week_number: 2)
  4.times{group.students.create(name: Faker::Name.name, cohort_id: 2)}
end

#----------------------------Photos-------------------------------------------#
20.times do |i|
  Photo.create(photo_url: "https://pbs.twimg.com/profile_images/2233651624/jones_400x400.jpg", imageable_id: i+21, imageable_type: "Student")
end

Photo.create(photo_url: "http://www.allaboutbirds.org/guide/PHOTO/LARGE/Bobolink-Vyn_060513_0010.jpg", imageable_id: 2, imageable_type: "Cohort")
