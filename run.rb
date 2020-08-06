require 'pry'
require_relative "./models/clown"


krusty = Clown.new("Krusty the Krustacular", 55, "juggling", "Children")
bozo = Clown.new("Bozo the Clown", 47, "honking")

# test your code here!
# create a few new clown instances, for example:
# krusty = Clown.new("Krusty", 55, "Juggling Chainsaws", "Failure")

# then run "ruby run.rb" and call your methods to make sure your code works
# for example:
# krusty.name 
# => "Krusty"
# krusty.name = "Krusty the Krustacular"
# krusty.name 
# => "Krusty the Krustacular"
# krusty.fears = "Children"
# krusty.fears
# => "Failure"

binding.pry
"pls"