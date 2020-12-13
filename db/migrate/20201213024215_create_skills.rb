class CreateSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :skills do |t|
      t.string :name
      t.string :description
      t.string :incant
      t.integer :tier
      t.boolean :playeravailable
      t.references :skillgroup, null: false, foreign_key: true
      t.references :resttype, null: false, foreign_key: true
      t.references :skilldelivery, null: false, foreign_key: true
      t.timestamps
    end
  end
end