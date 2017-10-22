class CreateEtablissements < ActiveRecord::Migration[5.1]
  def change
    create_table :etablissements do |t|
      t.string :code, limit: 20, index: {unique: true}
      t.string :name, limit: 20
      t.references :company, foreign_key: true
      t.references :address, foreign_key: true

      t.timestamps
    end
  end
end
