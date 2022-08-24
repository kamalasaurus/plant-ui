class ChangeDataTypeForTubeVolume < ActiveRecord::Migration[7.0]
  def change
    change_column :tubes, :volume, :decimal
  end
end
