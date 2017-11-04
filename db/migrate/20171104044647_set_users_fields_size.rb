class SetUsersFieldsSize < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :username, :string, limit: 40
    change_column :users, :email, :string, limit: 40
  end
end
