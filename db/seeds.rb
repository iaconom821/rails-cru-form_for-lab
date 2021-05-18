# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Artist.destroy_all
Genre.destroy_all
Song.destroy_all

Artist.create(name: "Blue", bio: "You too")
Genre.create(name: "grass")
Song.create(name: "kentucky", artist_id: Artist.first.id, genre_id: Genre.first.id )