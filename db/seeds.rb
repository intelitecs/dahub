# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#User profiles

#profiles = Profile.create!([{name: "superadmin"},{name: "accountant"},{name: "admin"},{name:"user"},{name: "manager"},{name: "employee"},{name: "company"},{name: "etablissement"}])

superAdminProfile = Profile.find_by_name("superadmin")
superAdminUser = User.create!({username: "jarode", email: "jarode@me.com", password: "jarode"})
UserProfile.create!({user: superAdminUser, profile: superAdminProfile})
