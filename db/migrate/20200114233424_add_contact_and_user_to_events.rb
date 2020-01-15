class AddContactAndUserToEvents < ActiveRecord::Migration[6.0]
  def change
    add_reference :events, :contact, null: false, foreign_key: true
    add_reference :events, :user, null: false, foreign_key: true
  end
end