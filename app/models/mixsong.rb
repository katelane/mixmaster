class MixSong < ActiveRecord::Base
  belongs_to :mix
  belongs_to :song

end
