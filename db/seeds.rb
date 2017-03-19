# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cars = Car.create([
	{ make: 'Tesla', model: 'S', year: 2016 }, 
	{ make: 'Tesla', model: 'X', year: 2017 } 
	])
ratings = Rating.create([
	{ reviewedBy: 'Edmunds', safety: 5, performance: 5, technology: 5, interior: 5, reliability: 5, overall: 5, car_id: 1 },
	{ reviewedBy: 'Car and Driver', safety: 4, performance: 5, technology: 5, interior: 5, reliability: 5, overall: 4, car_id: 1 },
	{ reviewedBy: 'Car and Driver', safety: 4, performance: 5, technology: 5, interior: 5, reliability: 4, overall: 4, car_id: 2}
	])
