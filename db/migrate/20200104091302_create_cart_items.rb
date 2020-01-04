class CreateCartItems < ActiveRecord::Migration[6.0]
  def change
    create_table :cart_items do |t|
      t.integer :vegitable_id
      t.integer :cart_id
      t.string :unit_price
      t.integer :quantity
      t.string :price
      t.boolean :is_active

      t.timestamps
    end
  end
end
