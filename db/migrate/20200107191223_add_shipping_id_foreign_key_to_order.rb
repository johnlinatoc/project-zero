class AddShippingIdForeignKeyToOrder < ActiveRecord::Migration[6.0]
  def change
    add_reference :orders, :shipping, null: false, foreign_key: true
  end
end
