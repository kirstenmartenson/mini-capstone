# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
product = Product.new (name: "dog treat", price:"1", image_url:"https://img.chewy.com/is/image/catalog/86899_MAIN._AC_SL1500_V1512484676_.jpg", description: "Roasted Marrow Bone is full of flavors sure to satisfy your dog’s natural palate.")
product.save
