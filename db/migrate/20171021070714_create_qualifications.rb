class CreateQualifications < ActiveRecord::Migration[5.1]
  def change
    create_table :qualifications do |t|
      t.string :name, limit: 50
      t.string :description
      t.references :employee, foreign_key: true

      t.timestamps
    end
  end
end
