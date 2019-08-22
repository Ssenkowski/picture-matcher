class AddColumnToPictures < ActiveRecord::Migration[5.2]
  def change
    add_column :pictures, :background, :boolean
    add_column :pictures, :background_id, :integer
  end
end
