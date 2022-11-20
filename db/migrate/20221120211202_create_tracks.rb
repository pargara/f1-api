class CreateTracks < ActiveRecord::Migration[7.0]
  def change
    create_table :tracks do |t|
      t.string :name
      t.string :length
      t.string :country

      t.timestamps
    end
  end
end
