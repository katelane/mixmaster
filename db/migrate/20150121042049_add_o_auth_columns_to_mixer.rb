class AddOAuthColumnsToMixer < ActiveRecord::Migration
  def change
    change_table :mixers do |t|
      t.remove :email, :crypted_password, :salt
      t.rename :username, :name
      t.string :provider
      t.string :uid
    end
  end
end
