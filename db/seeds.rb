# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Cats (:name, :birth_date, :color, :sex, :description)
c1 = Cat.create(name: 'JJ', birth_date: '2008-07-15', color: 'black', sex: 'M', description: 'He is a bit grumpy.')
c2 = Cat.create(name: 'Meowgret Thatcher', birth_date: '2009-04-22', color: 'gray', sex: 'F', description: 'AKA Kitten; she is a pretty girl.')
c3 = Cat.create(name: 'Monks', birth_date: '2011-09-21', color: 'black', sex: 'M', description: 'He is sweet but naughty.')