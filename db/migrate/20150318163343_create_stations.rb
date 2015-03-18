class CreateStations < ActiveRecord::Migration
  def change
    create_table :stations do |t|
      t.column :line_id, :integer
      t.column :name, :string
      t.column :bus_id, :integer

      t.timestamps
    end
  end
end
