class CreateSchools < ActiveRecord::Migration[7.1]
  def change
    create_table :schools do |t|
      t.string :name
      t.references :teacher, null: false, foreign_key: true

      t.timestamps
    end
  end
end
