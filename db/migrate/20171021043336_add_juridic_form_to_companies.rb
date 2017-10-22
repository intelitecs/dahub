class AddJuridicFormToCompanies < ActiveRecord::Migration[5.1]
  def change
    add_reference :companies, :juridic_form, foreign_key: true
  end
end
