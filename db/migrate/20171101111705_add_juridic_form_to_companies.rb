class AddJuridicFormToCompanies < ActiveRecord::Migration[5.1]
  def change
    add_reference :companies, :juridic_form
  end
end
