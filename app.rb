require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Howdy!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get("/rock") do
  moves = ["Rock", "Paper", "Scissors"]

  @comp_move = moves.sample

  if @comp_move == "Rock"
    @outcome = "Tied"
  elsif @comp_move == "Paper"
    @outcome = "Lost"
  else
    @outcome = "Won"
  end

  erb(:rock)
end

get("/paper") do
  moves = ["Rock", "Paper", "Scissors"]

  @comp_move = moves.sample

  if @comp_move == "Paper"
    @outcome = "Tied"
  elsif @comp_move == "Scissors"
    @outcome = "Lost"
  else
    @outcome = "Won"
  end

  erb(:paper)
end

get("/scissors") do
end
