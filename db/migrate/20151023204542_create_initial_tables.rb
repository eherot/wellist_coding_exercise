class CreateInitialTables < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :care_type
      t.string :care_sub_type
    end

    create_table :vendors do |t|
      t.string :name
      t.string :category
      t.string :care_type
      t.string :care_sub_type
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.integer :price_rating
    end
  end
end
