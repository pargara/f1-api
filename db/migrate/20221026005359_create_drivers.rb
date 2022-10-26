class CreateDrivers < ActiveRecord::Migration[7.0]
  def change
    create_table :drivers do |t|
      t.string :name
      t.string :nationality
      t.integer :year_start
      t.integer :number_podiums
      t.integer :number_world_championship

      t.timestamps
    end
  end
end
