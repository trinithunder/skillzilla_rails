class CreateThemeColors < ActiveRecord::Migration[7.1]
  def change
    create_table :theme_colors do |t|
      t.string :title
      t.string :hexCode

      t.timestamps
    end
  end
end
