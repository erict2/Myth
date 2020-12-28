class CreateSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :skills do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.string :incant
      t.string :target
      t.string :prop
      t.integer :tier, null: false
      t.integer :maxpurchase, null: false
      t.boolean :playeravailable
      t.references :skillgroup, null: false, foreign_key: true
      t.references :resttype, null: false, foreign_key: true
      t.references :skilldelivery, null: true, foreign_key: true
      t.timestamps
    end
  end
end