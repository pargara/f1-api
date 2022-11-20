# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
#

driver = Driver.create([{ name: "Juan Pablo Montoya", nationality: "CO", year_start: 2002, number_podiums: 30, number_world_championship: 0}])
track = Track.create([{ name: "Paul Ricard", length: "5,842 KM", country: "France"}])
