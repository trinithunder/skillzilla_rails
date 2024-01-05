class CreateSubscriptions < ActiveRecord::Migration[7.1]
  def change
    create_table :subscriptions do |t|
      t.string :plan_name
      t.integer :plan_price
      t.date :plan_billing_date

      t.timestamps
    end
  end
end
