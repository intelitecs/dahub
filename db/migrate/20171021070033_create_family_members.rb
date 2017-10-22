class CreateFamilyMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :family_members do |t|
      t.string :nature
      t.string :lastname
      t.string :firstname
      t.string :birthdate
      t.string :nationality
      t.string :matrimonial_situation
      t.references :employee, foreign_key: true
      t.string :cnps
      t.string :job

      t.timestamps
    end
  end
end
