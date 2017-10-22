class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.string :code, limit: 10, index: {unique: true}
      t.string :nature, limit: 20
      t.string :sector, limit: 30
      t.decimal :tauxAt, limit: 3

      t.timestamps
    end
  end
end
