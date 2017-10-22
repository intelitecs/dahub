class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :building, limit: 20
      t.string :cadasRef, limit: 20
      t.integer :cieNum, limit: 2
      t.integer :sodeciNum, limit: 2
      t.string :ilot, limit: 12
      t.string :lot, limit: 12
      t.string :street, limit: 20
      t.integer :postCode, limit: 1
      t.string :quarter, limit: 20
      t.integer :postAgenceNum, limit: 1
      t.integer :streetNum, limit: 1
      t.integer :stageNum, limit: 1
      t.integer :doorNum, limit: 1
      t.references :country, foreign_key: true
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
