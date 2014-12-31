class AddMixerToMix < ActiveRecord::Migration
  def change
    add_column :mixes, :mixer_id, :integer
  end
end
