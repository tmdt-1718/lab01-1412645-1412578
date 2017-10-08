# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Blog.delete_all

(1..2).each do |number|
	Blog.create!(user_id: "#{number}", image_id: "#{number}", view_number: "#{number}", text_content: "123")
end