class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.date :delivery_date
      t.string :type
      t.integer :status

      t.timestamps
    end
  end
end
