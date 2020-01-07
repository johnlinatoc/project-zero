class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :card_number
      t.string :card_name
      t.date :expiration_date

      t.timestamps
    end
  end
end
