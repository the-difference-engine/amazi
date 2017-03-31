# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# ChemicalCategory.create([{name: "Disinfectants"}, {name: "Disinfection Byproducts"}, {name: "Inorganic Chemicals"},{name: "Microorganisms"},{name: "Organic Chemicals"},{name: "Radionuclides"}])
# UserType.create([{name: "Admin"}, {name: "User"}])
# LocationCategory.create([{name: "Retail"},{name: "Food & Beverage"}])
# LocationSubcategory.create([{name: "Grocery/Supermarket", location_category_id: 1}, {name: "Water", location_category_id: 2}])
# WaterProvider.create([{name: "San Francisco Public Utilities Commission"}, {name: "San Jose Water Company"}, {name: "East Bay Municipal Utility District"}])

# # Test Data
# sample_chemical = Chemical.create(name: "Gas")


# products = ["B00XIIWDAG","B01C6HAVVM","B01G7SQ8GS","B00LA97I8M","B005HN1YY6","B001K72L9K","B0050TQ0OG","B011O11TSU","B011O11RR8","B004987QTC","B01HC79R8E","B00FUANGVA","B00H90PFOK","B01M3S7O5I","B00GYAWAI0","B00B2PNL0S","B005P0FZFK","B008NIHDYM","B006OJHJZK","B00BWIX1EQ"]

# products.each do |product|
#   new_product = AmazonProduct.new(product_id: product)
#   new_product.save
# end

water_types = ["fountain", "filtered", "eco-alternative"]
water_types.each do |watertype|
  new_water = WaterType.new(name: watertype)
  new_water.save
end