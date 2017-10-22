class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :cc, limit: 20, index: {unique: true}
      t.string :cnps, limit: 20, index: {unique: true}
      t.references :company_registry_document, foreign_key: true
      t.string :name, limit: 20, index: {unique: true}
      t.string :socialReason, limit: 20, index:{unique: true}
      t.string :sigle, limit: 6, index: {unique: true}
      t.string :webSite, limit: 16, index: {unique: true}
      t.string :impotCenter, limit: 20
      t.string :impotRegime, limit: 20
      t.datetime :acte_const_at
      t.string :num_acte_const, limit: 20
      t.references :country, foreign_key: true
      t.references :address, foreign_key: true

      t.timestamps
    end
  end
end
