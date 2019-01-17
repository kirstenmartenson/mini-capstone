# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

#Products brorrowed from Chewy.

product = Product.new (name: "dog treat", price:"1", image_url:"https://img.chewy.com/is/image/catalog/86899_MAIN._AC_SL1500_V1512484676_.jpg", description: "Roasted Marrow Bone is full of flavors sure to satisfy your dog’s natural palate.")
product.save
product = Product.new (name: "dog food", price:"3", image_url: "https://img.chewy.com/is/image/catalog/46861_MAIN._AC_SL1500_V1529603537_.jpg", description: "Blue Buffalo Life Protection Formula was created for the holistic health and well-being of adult dogs.")
product.save
product = Product.new (name: "Moose Plush Dog Toy", price: "5", image_url: "https://img.chewy.com/is/image/catalog/66604_MAIN._AC_SL1500_V1530802293_.jpg", description: "The KONG Cozies are cute, soft and cuddly plush toys made with an extra layer of material, so they’re extra tough.")
product.save
product = Product.new (name: "Jerky Treats", price: "4", image_url: "https://img.chewy.com/is/image/catalog/131591_MAIN._AC_SL1500_V1511302695_.jpg", description: "American Journey Beef Jerky Dog Treats are grain-free, all-natural, delicious and made with wholesome ingredients to fuel the entire pack.")
product.save
