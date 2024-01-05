class CreateTermsOfServices < ActiveRecord::Migration[7.1]
  def change
    create_table :terms_of_services do |t|
      t.string :title
      t.text :message

      t.timestamps
    end
  end
end
