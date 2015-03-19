class DropBuses < ActiveRecord::Migration
  def change
    drop_table :buses
  end
end
