class RemoveDefaultFromMissionStatus < ActiveRecord::Migration[8.1]
  def change
    change_column_default :missions, :status, nil
  end
end