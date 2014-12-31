class Mix < ActiveRecord::Base
  belongs_to :mixer
  has_many :songs, through: :mix_songs
  has_many :mix_songs
end
