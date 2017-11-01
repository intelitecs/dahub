class RemoveJuridicFormFromCompanies < ActiveRecord::Migration[5.1]
  def change
    remove_reference :companies, :juridic_form
    drop_table :juridic_forms
  end
end
