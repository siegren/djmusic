class Melody < ApplicationRecord
  belongs_to :lyric
  belongs_to :user

  has_attached_file :sound
  validates_attachment_content_type :sound, :content_type => ['audio/mp3']
end
