require "csv"
users = CSV.read("exercise_1.csv", headers: true)
cities = users.by_col["city"]
puts cities