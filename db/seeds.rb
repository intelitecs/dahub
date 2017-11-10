# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# create countries
country1 = {code: "CIV", code2: "CI", continent: "Afrique",localname: "Côte d'ivoire", name: "Côte d'ivoire", governmentForm: "République", lifeExpectancy: 67.5, indepYear: 1960, eCapital: "Abidjan", pCapital: "Yamoussoukro"}
country2 = {code: "MAL", code2: "ML", continent: "Afrique",localname: "Mali", name: "Mali", governmentForm: "République", lifeExpectancy: 60.5, indepYear: 1960, pCapital: "Bamako", eCapital: "Bamako"}
countries = Country.create!([country1, country2])

# Juridic Forms for companies
sarl = {name: "sarl", description:"Société à responsabilité limitée.Elle offre l'avantage d'une structure simple au sein de laquelle la
                                   responsabilité des associés est limitée au montant de leurs apports. Son capital, dont la loi ne fixe aucun montant minimal, est reparti entre au moins deux(2) assoiciés. Elle est dirigée par un ou plusieurs gérants, associés ou non."}

eurl = {name: "eurl", description: "l'entreprise unipersonnelle à responsabilité limitée. C'est une catégorie très particulière de la SARL, L'EURL n'a qu'un seul associé.
                                   Ses règles de fonctionnement sont très proches de celles de la SARL. La principale différence concerne son régime fiscal: ses bénéfices sont imposés de plein droit à l'impôt sur le revenu au nom de l'associé, une option à l'impôt sur les associés étant toutefois possible."}
selarl = {name: "selarl", description: "Société d'exercice libérale à responsabilité limitée.Catégorie particulière de la SARL, mais qui concerne les  professions libérales."}

sa = {name: "sa", description:"Société Anonyme. Elle est constituée par des actionnaires dont le nombre minimal est fixé par la loi, et réunissant au minimum un montant fixé par la loi également.
                  Elle est dirigée par un président et un directeur général(qui peuvent  n'être qu'une seule personne) et par un conseil d'administration composé d'au moins
                  un nombre de personnes. fixé par la loi. Elle est soumise à l'obligation de nommer un commissaire aux comptes.
                  La société Anonyme, du fait de la lourdeur de ses règles de fonctionnement, est à reserver,
                  à des projets d'une certaine ampleur. Elle est également utilisée lorsque des actionnaires qui ne participent pas à l'activité veulent exercer un pouvoir de contrôle au sein du conseil d'administration.
                  Les actionnaires y voient leur responsabilité limitée au montant de leurs apports."}


JuridicForm.create!([sarl, eurl, selarl, sa])

#User profiles

profiles = Profile.create!([{name: "superadmin"},{name: "accountant"},{name: "admin"},{name:"user"},{name: "manager"},{name: "employee"},{name: "company"},{name: "etablissement"}])

superAdminProfile = Profile.find_by_name("superadmin")
#super admin user
superAdminUser = User.create!({username: "jarode", email: "jarode@me.com", password: "jarode", password_confirmation: "jarode"})
UserProfile.create!({user: superAdminUser, profile: superAdminProfile})
