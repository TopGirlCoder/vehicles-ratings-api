cars = Car.create([
	{ make: 'Tesla', model: 'S', year: 2016 }, 
	{ make: 'Tesla', model: 'X', year: 2017 } 
	])
ratings = Rating.create([
	{ reviewedBy: 'Edmunds', safety: 5, performance: 5, technology: 5, interior: 5, reliability: 5, overall: 0, car_id: 1 },
	{ reviewedBy: 'Car and Driver', safety: 4, performance: 5, technology: 5, interior: 5, reliability: 5, overall: 0, car_id: 1 },
	{ reviewedBy: 'Edmunds', safety: 4, performance: 5, technology: 5, interior: 5, reliability: 4, car_id: 2},
	{ reviewedBy: 'Car and Driver', safety: 4, performance: 5, technology: 5, interior: 5, reliability: 4, overall: 0, car_id: 2}
	])
