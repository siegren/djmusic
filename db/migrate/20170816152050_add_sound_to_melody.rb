class AddSoundToMelody < ActiveRecord::Migration[5.1]
  def self.up
    change_table :melodies do |t|
      t.attachment :sound
    end
  end

  def self.down
    drop_attached_file :melodies, :sound
  end
end
