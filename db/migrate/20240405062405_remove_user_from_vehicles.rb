class RemoveUserFromVehicles < ActiveRecord::Migration[7.1]
  def change
    remove_column :vehicles, :user_id
  end
end
