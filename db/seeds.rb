require 'faker'

User.delete_all
Receiver.delete_all
Gift.delete_all


  User.create!({
    first_name: "Hannie",
    last_name: "D",
    email: "hannie@email.com",
    password: "password",
  })

  Receiver.create!({
    first_name: Faker::Name.name,
    last_name: Faker::Name.name,
    relationship: "mom"
  })

  Receiver.create!({
    first_name: Faker::Name.name,
    last_name: Faker::Name.name,
    relationship: "boyfriend"
  })

  Gift.create!({
    title: "Watch",
    cost: 200,
    description: "Beautiful Michael Kors watch" ,
    giver_id: 1,
    receiver_id: 1
  })
    
  Gift.create!({
    title: "Apple Watch",
    cost: 400,
    description: "Good watch for boyfriend" ,
    giver_id: 1,
    receiver_id: 2
  })
