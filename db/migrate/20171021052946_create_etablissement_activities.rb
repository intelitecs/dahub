class CreateEtablissementActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :etablissement_activities do |t|
      t.references :etablissement, foreign_key: true
      t.references :activity, foreign_key: true

      t.timestamps
    end
  end
end
