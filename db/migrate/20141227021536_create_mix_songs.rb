class CreateMixSongs < ActiveRecord::Migration
  def change
    create_table :mix_songs do |t|
      t.references :mix, index: true
      t.references :song, index: true

      t.timestamps
    end
  end
end
