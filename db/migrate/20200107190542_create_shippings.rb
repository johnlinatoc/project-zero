class CreateShippings < ActiveRecord::Migration[6.0]
  def change
    create_table :shippings do |t|
      t.references :order, null: false, foreign_key: true
      t.references :address, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true
      t.float :shipping_charge
      t.integer :status

      t.timestamps
    end
  end
end
