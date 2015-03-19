class DropStopsAndCreateLinesStations < ActiveRecord::Migration
  def change
    drop_table :stops

    create_table :lines_stations do |t|
      t.column :line_id, :integer
      t.column :station_id, :integer
      t.column :time, :time

      t.timestamps
    end
  end
end
