class AddSubscriptionToUsers < ActiveRecord::Migration[7.1]
  def change
    add_reference :users, :subscription, null: false, foreign_key: true
  end
end
