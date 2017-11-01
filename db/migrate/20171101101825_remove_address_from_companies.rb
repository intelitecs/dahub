class RemoveAddressFromCompanies < ActiveRecord::Migration[5.1]
  def change
    remove_reference :companies, :address

  end
end
