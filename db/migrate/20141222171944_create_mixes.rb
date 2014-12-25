class CreateMixes < ActiveRecord::Migration
  def change
    create_table :mixes do |t|
      t.string :title
      t.text :description
      
      t.timestamps
    end
  end
end
