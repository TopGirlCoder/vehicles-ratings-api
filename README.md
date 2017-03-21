# Tesla Vehicles and Ratings API
www.github.com/topgirlcoder/tesla-server-app 

## Introduction
This is the unofficial documentation of Tesla Vehicles and Ratings API used by apps. It features functionality to retrieve, create, update, and delete Tesla vehicles and ratings.

## To access the API from the web
Simply go to <pre>https://cryptic-brushlands-41838.herokuapp.com</pre>. From here you can use the endpoints to access the API.

## To run on your local environment
* Download directory from GitHub
* In the terminal, cd into the directory and run: 
```
$ bundle install
``` 
```
$ bundle exec rake db:all
```
```
$ bundle exec rails server
```
* Open a new browser window, type into the url: 
```
localhost:3000
```

## Reference
### Vehicles
This resource is primarily responsible for listing the vehicles and the basic details about them.

|Endpoints | Description|
|------|------------| 
|GET (example.com)/api/cars | Retrieve a list of vehicles|
|GET (example.com)/api/cars/:id | Retrieve a single vehicle|
|POST(example.com)/api/cars | Create a vehicle|
|PATCH (example.com)/api/cars/:id | Update a vehicle|
|DELETE (example.com)/api/cars/:id | Delete a vehicle|

### Ratings
This resource is primarily responsible for listing the ratings for vehicles.

|Endpoints | Description|
|------|------------| 
|GET /api/cars/:id/ratings | Retrieve a list of ratings for a vehicle|
|GET /api/cars/:id/ratings/:id | Retrieve a single rating for a vehicle|
|POST /api/cars/:id/ratings | Create a rating for a vehicle|
|PATCH /api/cars/:id/ratings/:id | Update a rating for a vehicle|
|DELETE /api/cars/:id/ratings/:id | Delete a rating for a vehicle|

## Features
...coming soon.

## Format
The requests and responses in our API are transmitted in JSON—JavaScript Object Notation. It’s simple to use and implementations of JSON are widely available. Where you see Data in these documents for POST, PATCH, and PUT requests, you will need to send data as JSON in the body of your request.

## Dependencies and Versions
Ruby 2.3.1, Rails 5.0, Postgresql.

## Testing
RSPEC tests included.

## Support
The source for this documentation is on GitHub . If you have questions or need to report an issue, please open an issue.

## Contribute
Please share how we can make the API better. If you have a specific feature request or if you found a bug, please use GitHub issues. Fork these docs and send a pull request with improvements.

## Credits
Tanya Lindermeier

## License
MIT
