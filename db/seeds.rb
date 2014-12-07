# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

1.upto(SecureRandom.random_number(200) + 100) do |i|
  User.create(
      email: Faker::Internet.safe_email,
      password: (password = SecureRandom.base64),
      password_confirmation: password,
      name: Faker::Name.first_name,
      homepage: Faker::Internet.url
  )
  print 'u'
end

User.create(
    email: 'computerclubadmin@example.org',
    password: 'correcthorsebatterystable',
    password_confirmation: 'correcthorsebatterystable',
    name: 'adminpants',
    homepage: 'computerclub.example.com'
)
print 'a'