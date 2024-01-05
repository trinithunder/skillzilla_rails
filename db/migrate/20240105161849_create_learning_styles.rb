class CreateLearningStyles < ActiveRecord::Migration[7.1]
  def change
    create_table :learning_styles do |t|
      t.string :title
      t.text :message

      t.timestamps
    end
  end
end
