class CreateAppLayers < ActiveRecord::Migration[7.1]
  def change
    create_table :app_layers do |t|

      t.timestamps
    end
  end
end
