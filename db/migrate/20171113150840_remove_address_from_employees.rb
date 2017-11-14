class RemoveAddressFromEmployees < ActiveRecord::Migration[5.1]
  def change
    remove_reference :employees, :address
  end
end
