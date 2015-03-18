class CreateBusesStations < ActiveRecord::Migration
  def change
    create_table :buses_stations do |t|
      t.column :bus_id, :integer
      t.column :station_id, :integer
    end
  end
end
