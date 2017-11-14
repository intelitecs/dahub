class AddBirthplaceToEmployees < ActiveRecord::Migration[5.1]
  def change
    add_column :employees, :birthplace, :string
  end
end
