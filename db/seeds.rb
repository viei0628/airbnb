# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Castle.destroy_all

castles = ["Stirling Castle", "Edinburgh Castle", "Linlithhgow Palace", "Buckingham Palace",
    "Leeds Castle"]

castles.each do |c|
  Castle.create(name:c, address:"Scotland, United Kingdom",
    owner_last_name:"Vieira", owner_first_name:"Timothy")
end

