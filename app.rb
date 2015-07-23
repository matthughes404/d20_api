require('sinatra')
require('sinatra/json')
require_relative('lib/roller.rb')

dice = Roller.new

before do
  content_type :json
end

get '/d4' do
  roll = dice.roll(4)
  json roll
end

get '/d6' do
  roll = dice.roll(6)
  json roll
end

get '/d8' do
  roll = dice.roll(8)
  json roll
end

get '/d10' do
  roll = dice.roll(10)
  json roll
end

get '/d12' do
  roll = dice.roll(12)
  json roll
end

get '/d20' do
  roll = dice.roll(20)
  json roll
end

get '/d100' do
  roll = dice.roll(100)
  json roll
end
