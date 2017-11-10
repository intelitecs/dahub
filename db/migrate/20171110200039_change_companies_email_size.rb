class ChangeCompaniesEmailSize < ActiveRecord::Migration[5.1]
  def change
    change_column :companies, :email, :string, limit: 40
    change_column :companies, :socialReason, :string, limit: 60
  end
end
