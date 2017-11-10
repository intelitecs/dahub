class AddEmailToCompanies < ActiveRecord::Migration[5.1]
  def change
    add_column :companies, :email, :string, limit:20
  end
end
