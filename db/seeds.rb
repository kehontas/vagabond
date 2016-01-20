# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
 user = User.create({email: 't@.com', first_name: 't', last_name: 't', current_city: 't', password: 't'})
 user2 = User.create({email: 't2@.com', first_name: 't2', last_name: 't2', current_city: 't2', password: 't2'})
 user3 = User.create({email: 't@.com', first_name: 't', last_name: 't', current_city: 't', password: 't'})
 post = Post.create({title: 'my first post', content: "this is my first post yay!"})
 post2 = Post.create({title: 'my second post', content: "this is my second post yay!"})
 post3 = Post.create({title: 'my third post', content: "this is my third post yay!"})