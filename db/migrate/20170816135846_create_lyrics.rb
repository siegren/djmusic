class CreateLyrics < ActiveRecord::Migration[5.1]
  def change
    create_table :lyrics do |t|
      t.text :content
      t.boolean :is_publish
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
