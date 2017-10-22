class CreateCountries < ActiveRecord::Migration[5.1]
  def change
    create_table :countries do |t|
      t.string :code, limit: 3, index: {unique: true}
      t.string :code2, limit: 2, index: {unique: true}
      t.string :name, limit: 20, index: {unique: true}
      t.string :continent, limit: 20
      t.string :localname, limit: 20, index: {unique: true}
      t.decimal :surfaceArea, limit: 2
      t.decimal :lifeExpectancy, limit: 1
      t.decimal :gnp, limit: 1
      t.decimal :gnpold, limit: 1
      t.integer :population, limit: 3
      t.integer :indepYear, limit: 1
      t.string :governmentForm, limit: 20
      t.string :headOfState, limit: 30, index: { unique: true}
      t.string :eCapital, limit: 20
      t.string :pCapital, limit: 20

      t.timestamps
    end
  end
end


