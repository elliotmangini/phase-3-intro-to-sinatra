require 'sinatra'

class App < Sinatra::Base

  get '/hello' do
    '<h2>Hello <em>World</em>!</h2>'
  end

  get '/potato' do
    "<p>Boil 'em, mash 'em, stick 'em in a stew</p>"
  end


  # return dynamically

  # get '/dice' do
  #   dice_roll = rand(1..6)
  #   "<h2>You rolled a #{dice_roll}</h2>"
  # end


  # send back json data

  # set :default_content_type, 'application/json'

  # get '/dice' do
  #   dice_roll = rand(1..6)
  #   { roll: dice_roll }.to_json
  # end


  # request a path and use that path to do math

  # get '/add/1/2' do
  #   sum = 1 + 2
  #   { result: sum }.to_json
  # end

  # make it work for any input

  # get '/add/:num1/:num2' do
  #   num1 = params[:num1].to_i
  #   num2 = params[:num2].to_i

  #   sum = num1 + num2
  #   { result: sum }.to_json
  # end


  # this will give us a params hash as well
  # {"num1"=>"1", "num2"=>"2"}

  # have request turned into params which finds a game in our db
  # and returns that game as JSON

  # get '/games/:id' do
  #   game = Game.find(params[:id])
  #   game.to_json
  # end

end

run App
