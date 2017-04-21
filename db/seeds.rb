Post.destroy_all
User.destroy_all

User.create!({
  name: 'User1',
  email: 'user1@example.com',
  password: 'passwd1',
  password_confirmation: 'passwd1'
})

User.create!({
  name: 'User2',
  email: 'user2@example.com',
  password: 'passwd2',
  password_confirmation: 'passwd2'
})

3.times do
  PublicPost.create!(
    title: Faker::Lorem.sentence,
    body: Faker::Lorem.paragraphs.join(' ')
  )

  PrivatePost.create!(
    title: Faker::Lorem.sentence,
    body: Faker::Lorem.paragraphs.join(' ')
  )
end
