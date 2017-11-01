class AddIndexesToProfilesAndRoles < ActiveRecord::Migration[5.1]
  def change
    add_index :profiles,:name, unique: true
    add_index :roles,:name, unique: true
  end
end
