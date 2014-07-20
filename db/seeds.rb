# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#----------------------------Users-------------------------------------------#

#----------------------------Cohorts-------------------------------------------#
coyotes = Cohort.create(name: "Coyotes", email: "coyotoes-2014@gmail.com")
Cohort.create(name: "Bobolinks", email: "bobolinks-2014@gmail.com")

#----------------------------Groups and students-------------------------------------------#
# 5.times do
#   group = Group.create(cohort_id: 1, week_number: 8)
#   4.times{group.students.create(name: Faker::Name.name, cohort_id: 1)}

# end
# 5.times do
#   shuffled_students = Cohort.first.students.shuffle

#   5.times do
#     group = Group.create(cohort_id: 1, week_number: 9)
#     4.times{group.students << shuffled_students.pop}
#   end
# end


#----------------------------Photos-------------------------------------------#
# 20.times do |i|
#   Photo.create(photo_url: "http://qph.is.quoracdn.net/main-thumb-1521659-200-tgktpwluxywlvuxswwhbxcczypyrftiy.jpeg", imageable_id: i+1, imageable_type: "Student")

# end

Photo.create(photo_url: "https://avatars2.githubusercontent.com/u/6732201?s=140", imageable_id: 1, imageable_type: "Cohort")

ajay = coyotes.students.create(name: "Ajay Singh")
Photo.create(photo_url: "https://secure.gravatar.com/avatar/f4c5ac40dcf0803a63848f39a9e9ab49.png?r=PG&d=mm&s=98", imageable_id:ajay.id, imageable_type:"Student")
xander = coyotes.students.create(name: "Alexander Glassman")
Photo.create(photo_url: "https://secure.gravatar.com/avatar/0ac706d64f461dfa204e7f5201e9a0b7.png?r=PG&d=mm&s=98", imageable_id:xander.id, imageable_type:"Student")
andy = coyotes.students.create(name: "Andrew Principe")
Photo.create(photo_url: "https://secure.gravatar.com/avatar/300b2104df14527b54345197e0a4226c.png?r=PG&d=mm&s=98", imageable_id:andy.id, imageable_type:"Student")
celeen = coyotes.students.create(name: "Celeen Rusk")
Photo.create(photo_url: "https://secure.gravatar.com/avatar/174ec98a07141ffa609ba66127bb2152.png?r=PG&d=mm&s=98", imageable_id:celeen.id, imageable_type:"Student")
colin = coyotes.students.create(name: "Colin Trent")
Photo.create(photo_url: "https://secure.gravatar.com/avatar/f8712ac1aa48b11770ecfb3f1856928f.png?r=PG&d=mm&s=98", imageable_id:colin.id, imageable_type:"Student")
hing = coyotes.students.create(name: "Hing Huynh")
Photo.create(photo_url: "https://secure.gravatar.com/avatar/b775ee37f9596a85aee206be00162479.png?r=PG&d=mm&s=98", imageable_id:hing.id, imageable_type:"Student")
johnny = coyotes.students.create(name: "John Mulvahill")
Photo.create(photo_url: "https://secure.gravatar.com/avatar/c75d4a9bda233143c09b53724e2ff7f4.png?r=PG&d=mm&s=98", imageable_id:johnny.id, imageable_type:"Student")
joey = coyotes.students.create(name: "Joseph Rosztoczy")
Photo.create(photo_url: "https://secure.gravatar.com/avatar/33d145c76d451c7aff150feb7a09dcb5.png?r=PG&d=mm&s=98", imageable_id:joey.id, imageable_type:"Student")
marty = coyotes.students.create(name: "Martin Lear")
Photo.create(photo_url: "https://secure.gravatar.com/avatar/a683058ae3dd7fe836e73c4378ac4b0e.png?r=PG&d=mm&s=98", imageable_id:marty.id, imageable_type:"Student")
matt = coyotes.students.create(name: "Matthew Hein")
Photo.create(photo_url: "https://secure.gravatar.com/avatar/909b2d5bc1158be84117278d0616c9b5.png?r=PG&d=mm&s=98", imageable_id:matt.id, imageable_type:"Student")
natalie = coyotes.students.create(name: "Natalie McCroy")
Photo.create(photo_url: "https://secure.gravatar.com/avatar/3b487670398312b10de20535ac84f9f2.png?r=PG&d=mm&s=98", imageable_id:natalie.id, imageable_type:"Student")
osama = coyotes.students.create(name: "Osama Zayyad")
Photo.create(photo_url: "https://secure.gravatar.com/avatar/1e63d8222541b07a0241721ed74b6164.png?r=PG&d=mm&s=98", imageable_id:osama.id, imageable_type:"Student")
phil = coyotes.students.create(name: "Phillip Smith")
Photo.create(photo_url: "https://secure.gravatar.com/avatar/43864cfc86027cae27ac416c7dfab221.png?r=PG&d=mm&s=98", imageable_id:phil.id, imageable_type:"Student")
spencer = coyotes.students.create(name: "Spencer Olson")
Photo.create(photo_url: "https://secure.gravatar.com/avatar/92e954c099057dc2f6dd954290a6c1fd.png?r=PG&d=mm&s=98", imageable_id:spencer.id, imageable_type:"Student")
stu = coyotes.students.create(name: "Stuart Pearlman")
Photo.create(photo_url: "https://secure.gravatar.com/avatar/2f812abbf9d49b78874f066859433839.png?r=PG&d=mm&s=98", imageable_id:stu.id, imageable_type:"Student")
travis = coyotes.students.create(name: "Travis Hernandez")
Photo.create(photo_url: "https://secure.gravatar.com/avatar/6abba90898704e4b56bdd51c28855cdf.png?r=PG&d=mm&s=98", imageable_id:travis.id, imageable_type:"Student")
tyler = coyotes.students.create(name: "Tyler Keating")
Photo.create(photo_url: "https://secure.gravatar.com/avatar/c99c4423f27c4e51f7fcb01ac5639d69.png?r=PG&d=mm&s=98", imageable_id:tyler.id, imageable_type:"Student")
zach = coyotes.students.create(name: "Zach Pflederer")
Photo.create(photo_url: "https://secure.gravatar.com/avatar/205e3db441112353fd8f76a108e2a839.png?r=PG&d=mm&s=98", imageable_id:zach.id, imageable_type:"Student")

# 5.times do
#   group = Group.create(cohort_id: 2, week_number: 2)
#   4.times{group.students.create(name: Faker::Name.name, cohort_id: 2)}
# end

#----------------------------Photos-------------------------------------------#
20.times do |i|
  Photo.create(photo_url: "https://pbs.twimg.com/profile_images/2233651624/jones_400x400.jpg", imageable_id: i+21, imageable_type: "Student")
end

Photo.create(photo_url: "http://www.allaboutbirds.org/guide/PHOTO/LARGE/Bobolink-Vyn_060513_0010.jpg", imageable_id: 2, imageable_type: "Cohort")
