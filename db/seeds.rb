# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all

User.create(first_name: "kody", last_name: "lawton", email: "ko@law", password: "123")
User.create(first_name: "two", last_name: "num", email: "two@two", password: "two")
User.create(first_name: "three", last_name: "number", email: "three@three", password: "three")
User.create(first_name: "four", last_name: "last", email: "four@four", password: "four")