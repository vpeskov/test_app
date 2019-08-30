# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Customer.create([
  {name: 'Владимир Жириновский', phone: '8(923)-401-5544', description: 'Известный политик', is_blacklist: false},
  {name: 'Джордж Буш', phone: '8(913)-567-6093', description: 'Американский президент', is_blacklist: true},
  {name: 'Александр Суворов', phone: '8(906)-913-9082', description: 'Великий русский полководец', is_blacklist: false},
  {name: 'Джеки Чан', phone: '8(923)-902-7108', description: 'Известный киноактёр', is_blacklist: false},
  {name: 'Андрей Макаревич', phone: '8(913)-455-8124', description: 'Известный русский музыкант', is_blacklist: false},
  {name: 'Иван Репин', phone: '8(9238)-913-2103', description: 'Известный русский художник', is_blacklist: false}
])
