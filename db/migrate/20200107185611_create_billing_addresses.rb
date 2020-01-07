class CreateBillingAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :billing_addresses do |t|
      t.references :account, null: false, foreign_key: true
      t.string :address
      t.string :full_name
      t.string :city
      t.string :state
      t.integer :zip_code

      t.timestamps
    end
  end
end
