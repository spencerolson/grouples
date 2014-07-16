# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#----------------------------Users-------------------------------------------#

User.create(email: "johnathan@gmail.com", password: "password")
#----------------------------Cohorts-------------------------------------------#
cohort = Cohort.create(name: "Coyotes", email: "coyotoes-2014@gmail.com")
#----------------------------Students-------------------------------------------#
20.times{cohort.students.create(name: Faker::Name.name)}
#----------------------------Groups-------------------------------------------#
5.times do {
  group = Group.create(cohort_id: 1, week_number: 8)
  
}

#---------------------------StudentGroups-------------------------------------#


#----------------------------Photos-------------------------------------------#
