# README

This app is part of Ellen Wondra's application to work at Auction Edge.

It assumes you have Rails correctly installed on your machine.

## To run:

* install gems with `bundle install`
* create the database and run migrations with the following: `rake db:create` and then `rake db:migrate`
* `rails s`
* navigate to [localhost:3000](http://localhost:3000)

## Notes

For the purposes of this test, I assumed that every auction has a unique name. This is not
necessarily true. In a real-life scenario, I would want much better differentiation between
auctions in my code.

Additionally, I stored everything as strings in the database since the CSV will always initially read as strings. It removes a small level of complication for the purposes of this test. In a real-world situation, several fields like the year and stock number will be integers.

In a real-world scenario, I would want an additional Sale table. The sale table would be a join table between the vehicle and the auction tables, and would also include information like the payout and other data that we might want to preserve if a vehicle is sold multiple times.