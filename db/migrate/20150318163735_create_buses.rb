class CreateBuses < ActiveRecord::Migration
  def change
    create_table :buses do |t|
      t.column :number, :integer
      t.column :station_id, :integer

      t.timestamps
    end
  end
end
