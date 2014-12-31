class Song < ActiveRecord::Base
  has_one :artist
  has_many :mixes, through: :mix_songs
  has_many :mix_songs

end
