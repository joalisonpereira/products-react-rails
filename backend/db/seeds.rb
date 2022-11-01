# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

50.times do
	Product.create({
		name: 'T-Shirt',
		price: 99999,
		describe: 'Lorem Ipsum Test',
		photo_type: 'image/jpg',
		photo: '<Blob here>'
	})
end