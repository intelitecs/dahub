class AddPhonesToEmployees < ActiveRecord::Migration[5.1]
  def change
    add_column :employees, :email, :string, limit: 40
    add_column :employees, :phone, :string, limit: 20
    add_column :employees, :mobilePhone, :string, limit: 20
  end
end
