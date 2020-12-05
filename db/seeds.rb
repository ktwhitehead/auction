# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

company_1 = Company.create(name: "Company 1")

company_division_1 = CompanyDivision.create(name: "Company Division 1", company: company_1)

user_1 = User.create(first_name: "John", last_name: "Doe", email: "jdoe@jdoe.com", password: "testing123", company: company_1)

auction_1 = Auction.create(name: "Auction 1", description: "The first auction!", company_division: company_division_1)
