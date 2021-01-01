class CreateProfessions < ActiveRecord::Migration[6.0]
  def change
    create_table :professions do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.string :rank, null: false
      t.references :professiongroup, null: false, foreign_key: true
      t.boolean :playeravailable, null: false
      t.timestamps
    end
  end
end
