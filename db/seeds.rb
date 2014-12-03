# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Make Goals
%w(Study Workout).each do |name|
  Goal.create name: name
end

# Make other Users
%w(Ash Gary Misty Brock).each do |name|
  User.create name: name, email: name+"@goalgetter.com", password: 'password'
end
