# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ChemicalCategory.create([{name: "Disinfectants"}, {name: "Disinfection Byproducts"}, {name: "Inorganic Chemicals"},{name: "Microorganisms"},{name: "Organic Chemicals"},{name: "Radionuclides"}])
UserType.create([{name: "Admin"}, {name: "User"}])
LocationCategory.create([{name: "Retail"},{name: "Food & Beverage"}])
LocationSubcategory.create([{name: "Grocery/Supermarket", location_category_id: 1}, {name: "Water", location_category_id: 2}])
WaterProvider.create([{name: "San Francisco Public Utilities Commission"}, {name: "San Jose Water Company"}, {name: "East Bay Municipal Utility District"}])
