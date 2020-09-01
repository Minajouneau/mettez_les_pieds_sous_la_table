# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "faker"
require "open-uri"

Restaurant.destroy_all
User.destroy_all

# User.create!(email: "mikail@mlpslt.com", password: "mikail")
# User.create!(email: "francois@mlpslt.com", password: "francois")
# User.create!(email: "mina@mlpslt.com", password: "minaaa")
# User.create!(email: "stanislas@mlpslt.com", password: "stanislas")
User.create!(email: "adrien.cachot@gmail.com", password: "adrien", prenom: "Adrien", nom:"Cachot")
users = User.all

users.each do |user|
  name = "Détour"
  address = "15 Rue de la Tour des Dames, 75009, Paris, France"
  contact_email = "adrien.cachot@detour-restaurant.com"
  domain_name = "www.detour-restaurant.com"
  description = "Il s’appelle Adrien Cachot est originaire de Bordeaux, a travaillé à la Cape à Cenon puis au Saint-James avec Nicolas Magie, mais aussi à Paris, aux côtés de Christian Etchebest qui l’a aidé à s’installer. Le voilà à son compte, avec une jeune équipe, proposant en cuisine ouverte, à travers des menus bien balancés et bon marché, des idées dans le vent et des produits dans l’air du temps."
  phone_number = "01 45 26 21 48"
  restaurant = Restaurant.create!(name: name, address: address, contact_email: contact_email, activated: false, domain_name: domain_name, description: description, phone_number: phone_number, user: user, subdomain: "test.com")

  file = URI.open("https://fr.newtable.com/uploads/medias/restaurants/images/large/3637-photo1.jpg")
  photo = Photo.create!(restaurant: restaurant, category: :exterior)
  photo.file.attach(io: file, filename: "exterior")

  file = URI.open("https://1dc3f33f6d-3.optimicdn.com/gaultmillau.com/photos/15d386bfff5230c950001bb15520a3f8e0ca7f8e/detail.jpg?1510764427")
  photo = Photo.create!(restaurant: restaurant, category: :interior)
  photo.file.attach(io: file, filename: "interior")

  file = URI.open("https://lh3.googleusercontent.com/proxy/6pvI_HC2swF4K_3PTk_ANslFqBKwJhNTrtI8-qVET3Ddqg5dHud9ZfJNgQU1yqhlOerMVVv1ye05TG4saqvHso7LWXqGd_idLkrKDSo5-YVBvGmLQngQf0NxbOcN3zA")
  photo = Photo.create!(restaurant: restaurant, category: :chef)
  photo.file.attach(io: file, filename: "chef")

end
  # file = File.open("app/assets/images/adrien_cachot_portrait.jpg")
  # restaurant.photos.attach(io: file, filename: "restaurant")

  # 10.times do 
  #   name = Faker::Restaurant.name
  #   address = Faker::Address.full_address
  #   contact_email = Faker::Internet.email
  #   domain_name = "contact@" + name.parameterize + ".com"
  #   description = Faker::Restaurant.description
  #   phone_number = Faker::PhoneNumber.cell_phone_in     _e164
  #   restaurant = Restaurant.create!(name: name, address: address, contact_email: contact_email, activated: false, domain_name: domain_name, description: description, phone_number: phone_number, user: user)

  #   file = File.open("app/assets/images/adrien_portrait.jpg")
  #   restaurant.photos.where(category: :menu).attach(io: file, filename: "restaurant")
  # end
User.create!(email: "mallory.gabsi@gmail.com", password: "mallory")
