# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "a bit of cleaning first..."
Rooms.destroy_all
Equipment.destroy_all
Type.destory_all
puts "RRRooooaaaaaar !!!"
room = Room.new(name: "Petite salle d'étalo au RDC dans un passage charmant", superficy:17, independant:true, address:"18 rue de la Corderie 75003")
room.save
puts "étalo 18corderie created"
room2 = Room.new(name: "Petite salle de montage indépendante au RDC sur jolie ruelle", superficy:12, independant:false, address:"20 rue de la Corderie 75003")
room2.save
puts "montage 20corderie created"
mac = Equipment.new(name: "MacPro 2020", type_of:"Station de travail")
mac.room = room
mac.save
puts "macpro of 18corderie created"
mac2 = Equipment.new(name: 'iMac 2019 27"', type_of:"Station de travail")
mac2.room = room2
mac2.save
puts "imac of 20corderie created"
davinci = Equipment.new(name:"Mini Panel DaVinci", type_of:"panel d'étalonnage")
davinci.room = room
davinci.save
puts "davinci panel created"
type1 = Type.new(name: "étalonnage")
type1.room = room
type1.save
type2 = Type.new(name: "showroom")
type2.room = room
type2.save
type3 = Type.new(name: "montage")
type3.room = room2
type3.save
type4 = Type.new(name: "showroom")
type4.room = room2
type4.save
puts "That's all folks"
