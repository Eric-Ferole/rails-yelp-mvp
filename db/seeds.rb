# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating tasks...'
restaurants_attributes = [
{'name': 'At Institute', 'address': '996-3153 Tempus St.', 'phone_number': '1-824-176-6688', 'category': 'french'},
{'name': 'Non Company', 'address': '214-4680 Sem, Street', 'phone_number': '1-710-554-5030', 'category': 'italian'},
{'name': 'Nunc Nulla Vulputate PC', 'address': 'P.O. Box 439, 8902 Consectetuer St.', 'phone_number': '1-289-589-2134', 'category': 'japanese'},
{'name': 'Ridiculus Limited', 'address': 'Ap #187-5664 Ut Ave', 'phone_number': '1-362-121-3390', 'category': 'belgian'},
{'name': 'Amet Limited', 'address': 'P.O. Box 347, 460 Ridiculus Road', 'phone_number': '1-314-425-5564', 'category': 'italian'}]

Restaurant.create!(restaurants_attributes)
puts 'Finished!'

