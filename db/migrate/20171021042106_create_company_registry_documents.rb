class CreateCompanyRegistryDocuments < ActiveRecord::Migration[5.1]
  def change
    create_table :company_registry_documents do |t|
      t.string :document_number, limit: 20, index:{ unique: true}
      t.string :name, limit: 30
      t.string :description

      t.timestamps
    end
  end
end
