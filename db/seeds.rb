## GENERATE DUMMY DATA

15.times do
  Post.create(
    title: FFaker::Lorem.sentence,
    content: FFaker::Lorem.paragraph,
    user_id: rand(1..3)
  )
end

User.find_or_create_by(
  email: 'user1@test.com'
  ) do |u|
    u.name = 'Test User 1'
    u.password = 'password'
    u.password_confirmation = 'password'
end

User.find_or_create_by(
  email: 'user2@test.com'
  ) do |u|
    u.name = 'Test User 2'
    u.password = 'password'
    u.password_confirmation = 'password'
end

User.find_or_create_by(
  email: 'admin@test.com'
  ) do |u|
    u.name = 'Admin User'
    u.password = 'password'
    u.password_confirmation = 'password'
end

puts 'Seeded Database'