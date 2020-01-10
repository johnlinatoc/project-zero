# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
  # Character.create(name: 'Luke', movie: movies.first)

john = User.create(first_name: 'John', last_name: 'Doe', email: '123@abc.com', password_digest: '1234')
friend = Contact.create(user_id: john.id, name: 'Mary')
account = Account.create(user_id: john.id, card_number: 1234, card_name: "John Doe", expiration_date: '2021-12-25')
