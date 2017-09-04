class CreateMelodies < ActiveRecord::Migration[5.1]
  def change
    create_table :melodies do |t|
      t.references :lyric, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
