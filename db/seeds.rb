# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')  

# using the create method to create a new product called niceCat
niceCat = Product.create(title: "Quality Kitty",
subtitle: "Learn App Code", image_name: "kitty.JPG", 
price: "4.99", sku: "kittyOne", download_url: "https://cdn.macrumors.com/article-new/2018/10/appleinvitedesign3-800x509.jpg",
details: "A really nice picture", description: %{<p>It's a cat</p>
})