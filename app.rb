require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:home)
end

get("/process_roll") do
  @number_of_dice = params.fetch("number_dice").to_i
  @number_of_sides = params.fetch("number_sides").to_i

  @rolls = []

  @number_of_dice.times do
    die = rand(1..@number_of_sides)
    @rolls.push(die)
  end

  erb(:flexible)
end
