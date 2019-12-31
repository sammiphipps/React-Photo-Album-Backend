# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Photo.destroy_all
Album.destroy_all

picsum_url = 'https://picsum.photos/id'

family_album = Album.create(name: "Family Album")
family_vacation = Album.create(name: "Family Vacation - 2019 National Park")

alejandro_image_request = RestClient.get("#{picsum_url}/1/info")
alejandro_image_response = JSON.parse(alejandro_image_request)

alejandro = Photo.create(
    album: family_album,
    title: "Alejandro Hard at Work",
    date_taken: "2017-09-10",
    image_url: alejandro_image_response["download_url"]
)

tree_image_request = RestClient.get("#{picsum_url}/10/info")
tree_image_response = JSON.parse(tree_image_request)

vacation_photo_1 = Photo.create(
    album: family_vacation,
    title: "On the Other Side",
    date_taken: "2019-06-01",
    image_url: tree_image_response["download_url"]
)

father_son_image_request = RestClient.get("#{picsum_url}/1001/info")
father_son_image_response = JSON.parse(father_son_image_request)

father_son = Photo.create(
    album: family_album,
    title: "James and Alejandro on the Beach",
    date_taken: "1996-04-01",
    image_url: father_son_image_response["download_url"]
)

deer_image_request = RestClient.get("#{picsum_url}/1003/info")
deer_image_response = JSON.parse(deer_image_request)

deer = Photo.create(
    album: family_vacation,
    title: "Deer Up Close",
    date_taken: "2019-06-01",
    image_url: deer_image_response["download_url"]
)

person_mountain_request = RestClient.get("#{picsum_url}/1006/info")
person_mountain_response = JSON.parse(person_mountain_request)

person_mountain = Photo.create(
    album: family_vacation, 
    title: "Sara and Bailey on the Edge",
    date_taken: "2019-06-01",
    image_url: person_mountain_response["download_url"]
)

person_dog_house_request = RestClient.get("#{picsum_url}/1012/info")
person_dog_house_response = JSON.parse(person_dog_house_request)

person_dog = Photo.create(
    album: family_album,
    title: "James and Max",
    date_taken: "1996-03-01",
    image_url: person_dog_house_response["download_url"]
)

grandmother_request = RestClient.get("#{picsum_url}/1013/info")
grandmother_response = JSON.parse(grandmother_request)

grandmother = Photo.create(
    album: family_album, 
    title: "Martha at James and Sara's Wedding",
    date_taken: "1996-01-01",
    image_url: grandmother_response["download_url"] + "?grayscale"
)

bear_request = RestClient.get("#{picsum_url}/1020/info")
bear_response = JSON.parse(bear_request)

bear = Photo.create(
    album: family_vacation, 
    title: "Bear and Cubs",
    date_taken: "2019-06-01",
    image_url: bear_response["download_url"]
)

vulture_request = RestClient.get("#{picsum_url}/1024/info")
vulture_response = JSON.parse(vulture_request)

vulture = Photo.create(
    album: family_vacation,
    title: "Vulture - Sign of Death?",
    date_taken: "2019-06-01",
    image_url: vulture_response['download_url']
)

rainbow_request = RestClient.get("#{picsum_url}/1035/info")
rainbow_response = JSON.parse(rainbow_request)

rainbow = Photo.create(
    album: family_vacation,
    title: "Waterfall Rainbow",
    date_taken: "2019-06-02",
    image_url: rainbow_response["download_url"]
)

baby_request = RestClient.get("#{picsum_url}/1066/info")
baby_response = JSON.parse(baby_request)

baby = Photo.create(
    album: family_album,
    title: "Sara as a Baby",
    date_taken: "1976-08-01",
    image_url: baby_response["download_url"]
)

bench_request = RestClient.get("#{picsum_url}/129/info")
bench_response = JSON.parse(bench_request)

bench = Photo.create(
    album: family_album,
    title: "Sara and James Meeting",
    date_taken: "1995-08-15",
    image_url: bench_response["download_url"]
)

rock_formation_request = RestClient.get("#{picsum_url}/343/info")
rock_formation_response = JSON.parse(rock_formation_request)

rock_formation = Photo.create(
    album: family_vacation,
    title: "Cool Rock Formation",
    date_taken: "2019-06-02",
    image_url: rock_formation_response["download_url"]
)