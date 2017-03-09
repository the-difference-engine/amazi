class CreateAmazonProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :amazon_products do |t|
      t.string :product_id

      t.timestamps
    end
  end
end
