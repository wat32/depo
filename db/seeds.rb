# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(email: 'test@test.com', encrypted_password: '$2a$10$2u7r0tW0hI8BL2MIQFp2I.cO3U9ElIivCJ/tmtcpCW7lqUgInP7qO')