# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
jd_mall =Organization.find_or_create_by!(short_name: 'JD-Malls') do |organization|
  organization.name =  "JD-Malls"
  organization.email = "info@pdxdiaperbank.org"
  organization.address = "P.O. Box 22613, Portland OR 97269"
end

peace_trader = Organization.find_or_create_by!(short_name: "Peace Traders") do |organization|
  organization.name = "Peace Traders"
  organization.address = "P.O. Box 12345, San Francisco CA 90210"
  organization.email = "info@sfdiaperbank.org"
end

user = User.create email: 'jd_mall@example.com', password: 'password', password_confirmation: 'password', organization: jd_mall, organization_admin: true
user2 = User.create email: 'peace_trader@example.com', password: 'password', password_confirmation: 'password', organization: peace_trader
