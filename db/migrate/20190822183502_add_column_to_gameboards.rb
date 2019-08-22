class AddColumnToGameboards < ActiveRecord::Migration[5.2]
  def change
    add_column :gameboards, :background, :integer
  end
end
