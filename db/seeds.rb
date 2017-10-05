# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Album.delete_all
Album.create([{cover_url: "http://images5.fanpop.com/image/photos/28300000/Black-Cat-Wallpaper-black-28305470-500-375.jpg", author: "Trần Quang Trí"},
	{cover_url: "https://www.petfinder.com/wp-content/uploads/2012/11/152177319-declawing-cats-632x475-e1354303246526-632x353.jpg", author: "Lê Hoàng Vũ"},
	{cover_url: "http://media1.santabanta.com/full1/Animals/Cats/cats-85a.jpg", author: "Trần Minh Tiến"},
	{cover_url: "http://www.catster.com/wp-content/uploads/2016/05/cats-politics-TN.jpg", author: "Trần Hông Thuận"},
	{cover_url: "http://media1.santabanta.com/full1/Animals/Cats/cats-149a.jpg", author: "Mericurus"}])