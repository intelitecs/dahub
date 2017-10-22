class CreateObservations < ActiveRecord::Migration[5.1]
  def change
    create_table :observations do |t|
      t.string :author, limit: 30
      t.string :description
      t.references :employee, foreign_key: true

      t.timestamps
    end
  end
end
