class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :name, limit: 20

      t.timestamps
    end
  end
end
