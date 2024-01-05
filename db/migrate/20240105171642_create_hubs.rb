class CreateHubs < ActiveRecord::Migration[7.1]
  def change
    create_table :hubs do |t|
      t.string :title

      t.timestamps
    end
  end
end
