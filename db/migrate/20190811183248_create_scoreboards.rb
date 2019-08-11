class CreateScoreboards < ActiveRecord::Migration[5.2]
  def change
    create_table :scoreboards do |t|
      t.integer :userid
      t.string :name
      t.integer :score
      t.string :rank

      t.timestamps
    end
  end
end
