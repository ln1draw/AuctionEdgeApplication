# README

This app is part of Ellen Wondra's application to work at Auction Edge.

It assumes you have Rails correctly installed on your machine and that you are familiar with 
working from the terminal.

These seemed like fair assumptions given the instructions, but if not, they can be adjusted :)

## To run:

* install gems with `bundle install`
* create the database and run migrations with the following: `rake db:create` and then `rake db:migrate`
* `rails s`
* navigate to [localhost:3000](http://localhost:3000)

## Notes

* For the purposes of this test, I assumed that every auction has a unique name. This is not
necessarily true. In a real-life scenario, I would want much better differentiation between
auctions in my code.

* In a real-world scenario, I would want an additional Sale table. The sale table would be a 
join table between the vehicle and the auction tables, and would also include information 
like the payout and other data that we might want to preserve if a vehicle is sold multiple 
times.

* Nothing is actually checking for duplicate vehicles currently. This is a big assumption. We 
aren't doing much to check validity of data. This application won't handle bad data well, and 
if you keep feeding it the same csv over and over, the number of vehicles will increase again 
and again. You will have to drop the database to reduce the number of vehicles again.

* If I had more time, in addition to making an attractive UI, I would add any of the 
following: tests, better a11y labeling, and accordions on the index page auctions so you 
could explore the vehicles sold. I would also likely use more JavaScript so the user 
experience doesn't hang waiting for the vehicle records to be created; this is a small 
problem with the example csv, but a big enough document would create a bad user experience, 
which could also lead to other issues such as users attempting the same transaction 
repeatedly while they wait for the page to load.