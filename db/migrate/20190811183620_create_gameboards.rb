class CreateGameboards < ActiveRecord::Migration[5.2]
  def change
    create_table :gameboards do |t|
      t.integer :backgroud
      t.string :url

      t.timestamps
    end
  end
end
