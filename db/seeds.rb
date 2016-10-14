# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ChemicalCategory.create([{name: "Disinfectants"}, {name: "Disinfection Byproducts"}, {name: "Inorganic Chemicals"},{name: "Microorganisms"},{name: "Organic Chemicals"},{name: "Radionuclides"}])
UserType.create([{name: "Admin"}, {name: "User"}])
Location.create([{address: "77 Geary St", city: "San Francisco", state: "CA", zip: "94108", location_subcategory_id: 1, water_provider_id: 1}, {address: "120 Stockton St", city: "San Francisco", state: "CA", zip: "94102", location_subcategory_id: 2, water_provider_id: 2}, {address: "46 Geary St", city: "San Francisco", state: "CA", zip: "94108", location_subcategory_id: 1, water_provider_id: 3}, {address: "165 Post St, San Francisco", city: "San Francisco", state: "CA", zip: "94108", location_subcategory_id: 1, water_provider_id: 1}, {address: "90 Grant Ave", city: "San Francisco", state: "CA", zip: "94108", location_subcategory_id: 2, water_provider_id: 1}, {address: "218 Stockton St", city: "San Francisco", state: "CA", zip: "94108", location_subcategory_id: 1, water_provider_id: 2}, {address: "101 Post St", city: "San Francisco", state: "CA", zip: "94108", location_subcategory_id:2, water_provider_id: 2}, {address: "23 Grant St", city: "San Francisco", state: "CA", zip: "94108", location_subcategory_id: 2, water_provider_id: 2}, {address: "720 Market St", city: "San Francisco", state: "CA", zip: "94102", location_subcategory_id: 2, water_provider_id: 3}])
LocationCategory.create([{name: "Retail"},{name: "Food & Beverage"}])
LocationSubcategory.create([{name: "Grocery/Supermarket", location_category_id: 1}, {name: "Water", location_category_id: 2}])
WaterProvider.create([{name: "San Francisco Public Utilities Commission"}, {name: "San Jose Water Company"}, {name: "East Bay Municipal Utility District"}])
