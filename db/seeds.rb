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
    giver_id: User.first.id,
    receiver_id: Receiver.first.id,
    link: "https://jet.com/product/detail/b6fd202f259d453398cc12fb2e2d2b54?jcmp=pla:ggl:nj_dur_win_womens_clothing_shoes_accessories_a1:womens_clothing_shoes_accessories_other_a1:na:PLA_791085738_40441134959_pla-291694498227:na:na:na:2&code=PLA15&pid=kenshoo_int&c=791085738&is_retargeting=true&clickid=4a4e4a2e-cc72-450c-a9ec-c60130798f07"
  })
    
  Gift.create!({
    title: "Apple Watch",
    cost: 400,
    description: "Good watch for boyfriend" ,
    giver_id: User.first.id,
    receiver_id: Receiver.second.id,
    link: "https://www.bhphotovideo.com/bnh/controller/home?A=details&O=&Q=&ap=y&c3api=1876%2C%7Bcreative%7D%2C%7Bkeyword%7D&gclid=CjwKCAjwu7LOBRBZEiwAQtfbGKaoTqEF0Iucsn5UwZl7BGmmb_IkskSKBM9xkq1gT9sN275T0yrtZxoCGPYQAvD_BwE&is=REG&m=Y&sku=1280608"
  })
