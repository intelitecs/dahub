class CreateAccountants < ActiveRecord::Migration[5.1]
  def change
    create_table :accountants do |t|
      t.string :lastname
      t.string :firstname
      t.references :address, foreign_key: true
      t.references :company, foreign_key: true
      t.boolean :employed

      t.timestamps
    end
  end
end
