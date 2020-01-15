class CreateBillingAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :billing_addresses do |t|
      t.references :account, null: false, foreign_key: true
      t.string :address_1
      t.string :address_2
      t.string :first_name
      t.string :last_name
      t.string :city
      t.string :state
      t.integer :zipcode

      t.timestamps
    end
  end
end
