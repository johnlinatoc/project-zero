class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.references :user, null: false, foreign_key: true
      t.string :event_name
      t.date :delivery_date
      t.string :type
      t.integer :status
      t.float :shipping_charge

      t.timestamps
    end
  end
end
