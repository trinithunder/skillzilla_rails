class CreateTopicComments < ActiveRecord::Migration[7.1]
  def change
    create_table :topic_comments do |t|
      t.text :body
      t.references :topic, null: false, foreign_key: true

      t.timestamps
    end
  end
end
