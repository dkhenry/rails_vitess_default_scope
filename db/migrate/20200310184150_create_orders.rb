class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.text :item
      t.integer :quantity

      t.timestamps
    end
  end
end
