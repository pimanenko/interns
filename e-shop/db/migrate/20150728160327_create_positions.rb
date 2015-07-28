class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
		t.integer :cart_id
		t.integer :product_id
		t.integer :order_id


		t.timestamps null: false
    end
  end
end
