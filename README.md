# d20 API
REST API for simulating RPG dice rolls, written in Ruby with Sinatra.

## Routes

The following routes will simulate one rolled die:

    GET /d4

    GET /d6

    GET /d8

    GET /d10

    GET /d12

    GET /d20

    GET /d100

Each route will also accept a number of dice to roll. The following request will roll three d8 dice:

    GET /d8/3

d4, d6, d8, d10, and d12 will include the total for all dice rolled. d20 and d100 will include the high and low values if you roll multiple dice.

## How to use

Open a terminal window and start the Ruby API.

    ruby app.rb

Use a REST client (like [Postman](https://www.getpostman.com/)) to make GET requests, as shown below.

### Roll a d4

    GET http://localhost:4567/d4
    {
      "roll": [3],
      "total": 3
    }

### Roll ten d4

    GET http://localhost:4567/d4/10
    {
      "roll": [1,1,2,4,1,4,2,2,4,1],
      "total": 22
    }

### Roll a d20

    GET http://localhost:4567/d20
    {
      "roll": [14]
    }

### Roll two d20

    GET http://localhost:4567/d20/2
    {
      "roll": [15,13],
      "high": 15,
      "low": 13
    }
