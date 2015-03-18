class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.column :username, :string
      t.column :password_hash, :string
      t.column :password_salt, :string

      t.timestamps
    end
  end
end
