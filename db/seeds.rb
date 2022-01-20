# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.create(title: "First Post", body: "This is the first post of my new coding blog.")
Post.create(title: "Making the backend", body: "Today I focused on getting a simple rails backend up and running.")

puts "#{Post.count} posts created! "