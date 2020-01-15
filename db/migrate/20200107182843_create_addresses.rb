class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.references :contact, null: false, foreign_key: true
      t.string :address_1
      t.string :address_2
      t.string :phone_number

      t.timestamps
    end
  end
end
