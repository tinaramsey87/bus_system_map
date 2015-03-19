class RemoveBusIdFromStations < ActiveRecord::Migration
  def change
    remove_column :stations, :bus_id
  end
end
