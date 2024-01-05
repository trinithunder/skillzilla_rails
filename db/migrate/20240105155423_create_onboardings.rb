class CreateOnboardings < ActiveRecord::Migration[7.1]
  def change
    create_table :onboardings do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
