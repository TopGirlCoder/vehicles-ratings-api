# Tesla Vehicles and Ratings API
www.github.com/topgirlcoder/tesla-server-app

## Introduction
This is the unofficial documentation of Tesla Vehicles and Ratings API used by apps. It features functionality to retrieve, create, update, and delete Tesla vehicles and ratings.

## Reference
###Vehicles
This resource is primarily responsible for listing the vehicles and the basic details about them.

|Field | Description|
|------|------------| 
|GET (example.com)/api/cars | Retrieve a list of vehicles|
|GET (example.com)/api/cars/:id | Retrieve a single vehicle|
|POST(example.com)/api/cars | Create a vehicle|
|PATCH (example.com)/api/cars/:id | Update a vehicle|
|DELETE (example.com)/api/cars/:id | Delete a vehicle|

###Ratings
This resource is primarily responsible for listing the ratings for vehicles.

|Field | Description|
|------|------------| 
|GET (example.com)/api/cars/:id/ratings | Retrieve a list of ratings for a vehicle|
|GET (example.com)/api/cars/:id/ratings/:id | Retrieve a single rating for a vehicle|
|POST(example.com)/api/cars | Create a rating for a vehicle|
|PATCH (example.com)/api/cars/:id | Update a rating for a vehicle|
|DELETE (example.com)/api/cars/:id | Delete a rating for a vehicle|

## Features
## Format
The requests and responses in our API are transmitted in JSON—JavaScript Object Notation. It’s simple to use and implementations of JSON are widely available. Where you see Data in these documents for POST, PATCH, and PUT requests, you will need to send data as JSON in the body of your request.
## Testing
## Support
The source for this documentation is on GitHub . If you have questions or need to report an issue, please open an issue.
## Help make it better
Please share how we can make the API better. If you have a specific feature request or if you found a bug, please use GitHub issues. Fork these docs and send a pull request with improvements.
## Credits

## License
MIT

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
