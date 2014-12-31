class AddRecipientToMix < ActiveRecord::Migration
  def change
    add_column :mixes, :recipient, :string
  end
end
