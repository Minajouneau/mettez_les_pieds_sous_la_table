# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "faker"
require "open-uri"

# Restaurant.destroy_all
# User.destroy_all

# User.create!(email: "mikail@mlpslt.com", password: "mikail")
# User.create!(email: "francois@mlpslt.com", password: "francois")
# User.create!(email: "mina@mlpslt.com", password: "minaaa")
# User.create!(email: "stanislas@mlpslt.com", password: "stanislas")
User.create!(email: "adrien.cachot@gmail.com", password: "adrien", prenom: "Adrien", nom:"Cachot")
users = User.all

users.each do |user|
  name = "Détour"
  address = "15 Rue de la Tour des Dames, 75009, Paris, France"
  contact_email = "contact@detour-restaurant.com"
  domain_name = "https://www.restaurant-detour.com/"
  description = "Ma cuisine est dans l’air du temps et met l’accent sur les coquillages et crustacés: moule en émulsion sur un filet de porc fumé; asperges blanches, légumes d’Annie Bertin et mousse de coquillage à terminer avec un morceau de pain de chez Thierry Breton."
  phone_number = "01 45 26 21 48"
  instagram = "https://www.instagram.com/adriencachot/"
  restaurant = Restaurant.create!(name: name, address: address, contact_email: contact_email, activated: false, domain_name: domain_name, description: description, phone_number: phone_number, user: user, instagram_url: instagram)

  file = URI.open("https://1dc3f33f6d-3.optimicdn.com/gaultmillau.com/photos/9af8c202e62f2d2e7d1ffd9808f7c744e05afcfc/detail.jpg?1510764387")
  photo = Photo.create!(restaurant: restaurant, category: :food)
  photo.file.attach(io: file, filename: "food_1")

  file = URI.open("https://static.lpnt.fr/images/2017/09/24/10430745lpw-10431559-jpg_4581699.jpg")
  photo = Photo.create!(restaurant: restaurant, category: :food)
  photo.file.attach(io: file, filename: "food_2")

  file = URI.open("https://img.over-blog-kiwi.com/2/55/12/01/20190531/ob_a5f5a3_dessert-mystere-detour-restaurant-pari.jpg")
  photo = Photo.create!(restaurant: restaurant, category: :food)
  photo.file.attach(io: file, filename: "food_3")

  file = URI.open("https://www.alexanderlobrano.com/wp-content/uploads/2017/04/Detour-cod-and-radishes-768x497.jpg")
  photo = Photo.create!(restaurant: restaurant, category: :food)
  photo.file.attach(io: file, filename: "food_4")

  file = URI.open("https://media-cdn.tripadvisor.com/media/photo-p/0f/5b/3c/a4/photo1jpg.jpg")
  photo = Photo.create!(restaurant: restaurant, category: :food)
  photo.file.attach(io: file, filename: "food_5")

  file = URI.open("https://www.telerama.fr/sites/tr_master/files/styles/simplecrop1000/public/goguetteimg_4448_0.jpg?itok=cwLeVwVc")
  photo = Photo.create!(restaurant: restaurant, category: :food)
  photo.file.attach(io: file, filename: "food_6")

  file = URI.open("https://www.lepoint.fr/images/2017/09/24/10430745lpw-10431552-article-jpg_4581695_980x426.jpg")
  photo = Photo.create!(restaurant: restaurant, category: :interior)
  photo.file.attach(io: file, filename: "interior_1")

  file = URI.open("https://1dc3f33f6d-3.optimicdn.com/gaultmillau.com/photos/15d386bfff5230c950001bb15520a3f8e0ca7f8e/detail.jpg?1510764427")
  photo = Photo.create!(restaurant: restaurant, category: :interior)
  photo.file.attach(io: file, filename: "interior_2")

  file = URI.open("https://img.over-blog-kiwi.com/2/55/12/01/20190531/ob_0e1182_la-salle-detour-restaurant-paris-8.jpg")
  photo = Photo.create!(restaurant: restaurant, category: :interior)
  photo.file.attach(io: file, filename: "interior_3")

  file = URI.open("https://sortir.telerama.fr/sites/tr_master/files/styles/m_plus_640x360/public/assets/images/06_4.jpg?itok=6HLYTfjf")
  photo = Photo.create!(restaurant: restaurant, category: :interior)
  photo.file.attach(io: file, filename: "interior_4")

  file = URI.open("https://sortir.telerama.fr/sites/tr_master/files/styles/m_plus_640x360/public/assets/images/ok_27.jpg?itok=YgJ7_v_M")
  photo = Photo.create!(restaurant: restaurant, category: :exterior)
  photo.file.attach(io: file, filename: "exterior_1")

  file = URI.open("https://www.gourmetsandco.com/wp-content/uploads/2017/04/Restaurant-D%C3%A9tour-004-copie.jpg")
  photo = Photo.create!(restaurant: restaurant, category: :exterior)
  photo.file.attach(io: file, filename: "exterior_2")

  file = URI.open("https://www.alexanderlobrano.com/wp-content/uploads/2017/04/Detour-from-the-street-768x523.jpg")
  photo = Photo.create!(restaurant: restaurant, category: :exterior)
  photo.file.attach(io: file, filename: "exterior_3")

  file = URI.open("https://lh3.googleusercontent.com/proxy/26gzRO0Cl31_3iqpr-6h4Da6_3vitbC76meV5KaqyLIkppIR8wp6IyzmlFZ-0Ygr-RFDWPq75gU7SqtWQqhhc060oWHUtFBX7OAMAYMs4vt54w_Sc3t4HG-kxm4w6DM")
  photo = Photo.create!(restaurant: restaurant, category: :staff)
  photo.file.attach(io: file, filename: "staff_1")

  file = URI.open("http://www.gillespudlowski.com/wp-content/uploads/2017/04/l1090723-1024x683.jpg")
  photo = Photo.create!(restaurant: restaurant, category: :staff)
  photo.file.attach(io: file, filename: "staff_2")

  file = URI.open("https://www.alexanderlobrano.com/wp-content/uploads/2017/04/Detour-menu-@Alexander-Lobrano-768x918.jpg")
  photo = Photo.create!(restaurant: restaurant, category: :menu)
  photo.file.attach(io: file, filename: "menu_1")




  # file = URI.open("https://lh3.googleusercontent.com/proxy/6pvI_HC2swF4K_3PTk_ANslFqBKwJhNTrtI8-qVET3Ddqg5dHud9ZfJNgQU1yqhlOerMVVv1ye05TG4saqvHso7LWXqGd_idLkrKDSo5-YVBvGmLQngQf0NxbOcN3zA")
  # photo = Photo.create!(restaurant: restaurant, category: :chef)
  # photo.file.attach(io: file, filename: "chef")

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
# User.create!(email: "mallory.gabsi@gmail.com", password: "mallory")
