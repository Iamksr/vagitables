class CreateVegitables < ActiveRecord::Migration[6.0]
  def change
    create_table :vegitables do |t|
      t.string :name
      t.string :description
      t.string :price
      t.string :current_price
      t.integer :category_id
      t.string :image
      t.integer :quantity

      t.timestamps
    end
  end
end
