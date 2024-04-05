class AddUserIdToVehicles < ActiveRecord::Migration[7.1]
  def change
    add_column :vehicles, :user_id, :integer
  end
end
