# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

### Developer Notes: As the pointsRedeemValue is conditional these are written as turnery operations nested in turnery operations with commented notes to make them easier to read.

Program.create(
  company: 'Presidents Choice',
  pointsValue: '1000',
  pointsRedeemValue: @pcPoints
)

Program.create(
  company: 'Indigo',
  pointsValue: '500',
  pointsRedeemValue: @indigoPoints
)
