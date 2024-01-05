class CreateLeaves < ActiveRecord::Migration[7.1]
  def change
    create_table :leaves do |t|
      t.integer :count

      t.timestamps
    end
  end
end
