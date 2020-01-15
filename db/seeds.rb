# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
  # Character.create(name: 'Luke', movie: movies.first)

john = User.create(
  first_name: 'John',
  last_name: 'Doe',
  email: '123@abc.com',
  password_digest: '1234')
friend = Contact.create(
  user_id: john.id,
  first_name: 'Mary',
  last_name: 'Massie')
address = Address.create(
  contact_id: friend.id,
  address_1: "57 N. Baker",
  address_2: "1 North",
  phone_number: "743-909-0080")
account = Account.create(
  user_id: john.id,
  card_number: 1234,
  card_name: "John Doe",
  expiration_date: '2021-12-25')
billing = BillingAddress.create(
  account_id: account.id,
  address_1: '909 South Street',
  address_2: 'Unit 8',
  first_name: 'John',
  last_name: 'Doe',
  city: 'Chicago',
  state: 'Illinois',
  zipcode: 60001)
event = Event.create(
  event_name: "birthday",
  delivery_date: '2020-01-30',
  status: 0,
  user_id: john.id,
  contact_id: friend.id,
  shipping_charge: 5.19)
order = Order.create(
  user_id: john.id,
  account_id: account.id,
  event_id: event.id,
  total_amount: 123.45,
  event_id: event.id)
