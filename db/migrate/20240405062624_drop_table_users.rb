class DropTableUsers < ActiveRecord::Migration[7.1]
  def change
    drop_table :users
    drop_table :owners
  end
end
