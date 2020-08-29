# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "faker"

# Restaurant.destroy_all
# User.destroy_all

# User.create!(email: "mikail@mlpslt.com", password: "mikail")
# User.create!(email: "francois@mlpslt.com", password: "francois")
# User.create!(email: "mina@mlpslt.com", password: "minaaa")
# User.create!(email: "stanislas@mlpslt.com", password: "stanislas")
User.create!(email: "adrien.cachot@gmail.com", password: "adrien")

users = User.all

users.each do |user|

  name = "Détour"
  address = "15 Rue de la Tour des Dames, 75009, Paris, France"
  contact_email = "adrien.cachot@detour-restaurant.com"
  domain_name = "www.detour-restaurant.com"
  description = "Il s’appelle Adrien Cachot est originaire de Bordeaux, a travaillé à la Cape à Cenon puis au Saint-James avec Nicolas Magie, mais aussi à Paris, aux côtés de Christian Etchebest qui l’a aidé à s’installer. Le voilà à son compte, avec une jeune équipe, proposant en cuisine ouverte, à travers des menus bien balancés et bon marché, des idées dans le vent et des produits dans l’air du temps."
  phone_number = "01 45 26 21 48"
  restaurant = Restaurant.create!(name: name, address: address, contact_email: contact_email, activated: false, domain_name: domain_name, description: description, phone_number: phone_number, user: user)

  # file = File.open("app/assets/images/adrien_cachot_portrait.jpg")
  # restaurant.photos.attach(io: file, filename: "restaurant")

  # 2.times do
  #   name = Faker::Restaurant.name
  #   address = Faker::Address.full_address
  #   contact_email = Faker::Internet.email
  #   domain_name = "contact@" + name.parameterize + ".com"
  #   description = Faker::Restaurant.description
  #   phone_number = Faker::PhoneNumber.cell_phone_in_e164
  #   restaurant = Restaurant.create!(name: name, address: address, contact_email: contact_email, activated: false, domain_name: domain_name, description: description, phone_number: phone_number, user: user)

  #   file = File.open("app/assets/images/adrien_cachot_portrait.jpg")
  #   restaurant.photos.attach(io: file, filename: "restaurant")
  # end
end
