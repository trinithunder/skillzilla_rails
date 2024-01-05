class CreateDaysStreaks < ActiveRecord::Migration[7.1]
  def change
    create_table :days_streaks do |t|
      t.integer :count

      t.timestamps
    end
  end
end
