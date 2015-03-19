class DropBusesStations < ActiveRecord::Migration
  def change
    drop_table :buses_stations
  end
end
