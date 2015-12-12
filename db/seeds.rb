## GENERATE DUMMY DATA

10.times do
  Post.create(
    title: FFaker::Lorem.sentence,
    content: FFaker::Lorem.paragraph,
    user_id: rand(1..3)
  )
  Product.create(
    name: FFaker::Product.product_name,
    price: rand(50..300),
    image: "#{sprintf '%02d', rand(1..12)}.jpg"
  )
end

User.find_or_create_by(
  email: 'demo@user.com'
  ) do |u|
    u.name = 'Demo User'
    u.password = 'password'
    u.password_confirmation = 'password'
end


puts 'Seeded Database'