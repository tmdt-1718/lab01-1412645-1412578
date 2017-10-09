# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Picture.delete_all
Album.delete_all
User.delete_all
Blog.delete_all
album = Album.create([
	{cover_url: "https://i.imgur.com/FfttpII.jpg", author: "Trần Quang Trí", view_count: 0},
	{cover_url: "https://i.imgur.com/Hz466X3.jpg", author: "Lê Hoàng Vũ", view_count: 0},
	{cover_url: "https://i.imgur.com/3JNRlhF.jpg", author: "Trần Minh Tiến", view_count: 0},
	{cover_url: "https://i.imgur.com/ij16QvY.jpg", author: "Trần Hông Thuận", view_count: 0},
	{cover_url: "https://i.imgur.com/hztmlh2.jpg", author: "Mericurus", view_count: 0}])
Picture.create([
	{picture_url:"https://i.imgur.com/qYsZJI0.jpg", uploader: "Trí", view_count: 0, album: album[0]},
	{picture_url:"https://i.imgur.com/z0IAXyh.jpg", uploader: "Trí", view_count: 0, album: album[0]},
	{picture_url:"https://i.imgur.com/W6Z6I2w.jpg", uploader: "Trí", view_count: 0, album: album[0]},
	{picture_url:"https://i.imgur.com/foguNdM.jpg", uploader: "Trí", view_count: 0, album: album[0]},
	{picture_url:"https://i.imgur.com/WQObSf5.jpg", uploader: "Vũ", view_count: 0, album: album[1]}])
newuser1 = User.new
newuser1.name = "Trần Quang Trí"
newuser1.username = "1412578"
newuser1.password = "1412578"
newuser1.save!
newuser2 = User.new
newuser2.name = "Lê Hoàng Vũ"
newuser2.username = "1412645"
newuser2.password = "1412645"
newuser2.save!

(1..2).each do |number|
	Blog.create!(user_id: "#{number}", image_id: "#{number}", view_number: "#{number}", text_content: "Hallo, mein Name ist #{User.find(number).name}")
end
