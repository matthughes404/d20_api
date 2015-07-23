require('sinatra')
require('sinatra/json')
require_relative('lib/roller.rb')

before do
  content_type :json
end

get '/d4/?:num?' do
  num = number_to_roll(params[:num])
  roll = roll_results(num, 4)
  total = roll_total(roll)

  json :roll => roll, :total => total
end

get '/d6/?:num?' do
  num = number_to_roll(params[:num])
  roll = roll_results(num, 6)
  total = roll_total(roll)

  json :roll => roll, :total => total
end

get '/d8/?:num?' do
  num = number_to_roll(params[:num])
  roll = roll_results(num, 8)
  total = roll_total(roll)

  json :roll => roll, :total => total
end

get '/d10/?:num?' do
  num = number_to_roll(params[:num])
  roll = roll_results(num, 10)
  total = roll_total(roll)

  json :roll => roll, :total => total
end

get '/d12/?:num?' do
  num = number_to_roll(params[:num])
  roll = roll_results(num, 12)
  total = roll_total(roll)

  json :roll => roll, :total => total
end

get '/d20/?:num?' do
  num = number_to_roll(params[:num])
  roll = roll_results(num, 20)

  if num > 1
    high = roll.max
    low = roll.min

    json :roll => roll, :high => high, :low => low
  else
    json :roll => roll
  end
end

get '/d100/?:num?' do
  num = number_to_roll(params[:num])
  roll = roll_results(num, 100)

  if num > 1
    high = roll.max
    low = roll.min

    json :roll => roll, :high => high, :low => low
  else
    json :roll => roll
  end
end

private
def number_to_roll(input)
  num = 0
  num = input.to_i unless input.nil?

  num
end

def roll_results(num, type)
  dice = Roller.new
  output = []

  num.times do
    output.push(dice.roll(type))
  end

  output
end

def roll_total(rolls)
  sum = 0
  rolls.each do |r|
    sum += r
  end

  sum
end
