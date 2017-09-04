class Lyric < ApplicationRecord
  belongs_to :user
  has_many :melodies,  dependent: :destroy 

end
