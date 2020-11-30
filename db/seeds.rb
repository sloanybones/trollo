# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create(first_name: "Andrew", last_name: "Sloan", email: "andrew3@test.com", password: "123456")

user1.boards.create(name: "Chores")
user1.boards.create(name: "Work")
user1.boards.create(name: "Fun")
user1.boards.create(name: "Vacations")