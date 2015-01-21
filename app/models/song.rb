class Song < ActiveRecord::Base
  belongs_to :artist
  has_many :mix_songs
  has_many :mixes, through: :mix_songs
end
