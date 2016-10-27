# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


susan = User.create(email: 'susan@example.com', password_hash: '15464daffdsfsdf64')
bob = User.create(email: 'bob@example.com', password_hash: '15464daffdsfs111')
alice = User.create(email: 'alice@example.com', password_hash: '15464daffdsfs111')

susan_profile = Profile.create(first_name: 'Susan', last_name: 'Boyle', phone: '5555555', user: susan)
bob_profile = Profile.create(first_name: 'Bob', last_name: 'Brown', phone: '5555555', user: bob)
alice_profile = Profile.create(first_name: 'Alice', last_name: 'Alast', phone: '5555555', user: alice)

photo1 = Photo.create(description: 'Doge', asset_url: 'https://images.unsplash.com/photo-1453365607868-7deed8cc7d26?dpr=2&auto=compress,format&crop=entropy&fit=crop&w=568&h=379&q=80&cs=tinysrgb', user: susan)
photo2 = Photo.create(description: 'Doge', asset_url: 'https://images.unsplash.com/photo-1453487977089-77350a275ec5?dpr=2&auto=compress,format&crop=entropy&fit=crop&w=568&h=378&q=80&cs=tinysrgb', user: susan)
photo3 = Photo.create(description: 'Doge', asset_url: 'https://images.unsplash.com/photo-1456534231849-7d5fcd82d77b?dpr=2&auto=compress,format&crop=entropy&fit=crop&w=568&h=321&q=80&cs=tinysrgb', user: susan)
photo4 = Photo.create(description: 'Doge', asset_url: 'https://images.unsplash.com/photo-1443750200537-00fd518bdc82?dpr=2&auto=compress,format&crop=entropy&fit=crop&w=568&h=379&q=80&cs=tinysrgb', user: bob)

#tag Bob in photo1
PhotoTaggedUserRelationship.create(photo: photo1, user: bob)
#tag Susan in photo2
PhotoTaggedUserRelationship.create(photo: photo2, user: susan)
#tag Susan and Bob in photo3
PhotoTaggedUserRelationship.create([
    {photo: photo3, user: susan},
    {photo: photo3, user: bob}
  ])

#make Bob follow Susan
  UserFollowerRelationship.create(user: susan, follower: bob)
  #make Alice follow Susan
    UserFollowerRelationship.create(user: alice, follower: susan)
  #make Alice follow Bob
    UserFollowerRelationship.create(user: bob, follower: alice)  
