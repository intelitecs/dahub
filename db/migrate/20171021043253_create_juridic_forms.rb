class CreateJuridicForms < ActiveRecord::Migration[5.1]
  def change
    create_table :juridic_forms do |t|
      t.string :name, limit: 40, index:{ unique: true}
      t.string :description

      t.timestamps
    end
  end
end
