# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

User.create!([
  {
    name: "Kirsten", 
    email: "kirsten@gmail.com", 
    password: "password", 
    admin: true
  },
  {
    name: "Macie", 
    email: "macie@gmail.com", 
    password: "password", 
    admin: false
  }
])

Supplier.create!([
  {name: "Chewy", email: "chewy@chewy.com", phone_number: "123-4567"},
  {name: "Petco", email: "petco@petco.com", phone_number: "754-9321"},
  {name: "PetSmart", email: "petsmart@petsmart.com", phone_number: "124-6321"}
])

Category.create!([
  {name: "Treat"},
  {name: "Food"},  
  {name: "Toy"},  
  {name: "Jerky"}
])

Product.create!([
  {name: "Bil-Jac Dog Treat", price: 1, description: "Dogs agree that Bil-Jac Original Recipe with Liver Dog Treats, made with real liver, are delicious any time! ", supplier_id: 1},
  {name: "Nulo MedalSeries Jerky Strips", price: 9, description: "Whether you're training, walking the trail, or taking your pup to the gym with you, bring along these Jerky Strips to reward your good Nulo pup!", supplier_id: 2},
  {name: "Blue Buffalo Life Protection", price: 3, description: "Formula was created for the holistic health and well-being of adult dogs.", supplier_id: 1},
  {name: "Moose Plush Dog Toy", price: 5, decription: "The KONG Cozies are cute, soft and cuddly plush toys made with an extra layer of material, so they’re extra tough.", supplier_id: 1},
  {name: "Jerky Treats", price: 4, description: "American Journey Beef Jerky Dog Treats are grain-free, all-natural, delicious and made with wholesome ingredients to fuel the entire pack.", supplier_id: 1}
])

CategoryProduct.create!([
  {category_id: 1, product_id: 1},
  {category_id: 4, product_id: 2},
  {category_id: 2, product_id: 3},  
  {category_id: 3, product_id: 4},  
  {category_id: 4, product_id: 5}, 
