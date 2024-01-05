class CreateLifeStages < ActiveRecord::Migration[7.1]
  def change
    create_table :life_stages do |t|
      t.string :title

      t.timestamps
    end
  end
end
