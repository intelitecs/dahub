class CreateHandicaps < ActiveRecord::Migration[5.1]
  def change
    create_table :handicaps do |t|
      t.string :name, limit: 40
      t.string :description
      t.string :cause
      t.references :employee, foreign_key: true

      t.timestamps
    end
  end
end
